import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenHeight(20),
                  right: getProportionScreenWidth(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/wishlist");
                      },
                      icon: const Icon(Icons.favorite_border))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(79),
                  top: getProportionScreenHeight(10)),
              child: Container(
                height: getProportionScreenHeight(210),
                width: getProportionScreenWidth(236),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/balgar1.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getProportionScreenHeight(16),
                  left: getProportionScreenWidth(20)),
              child: Text(
                "Paprika",
                style: TextStyle(fontSize: getProportionScreenHeight(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getProportionScreenHeight(8),
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vegshop",
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(14),
                        color: Constants.greyRang),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: ButtonContainer(
                          color:  Constants.yashilRang,
                          icon: const Icon(
                            
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          context.read<CounterProvider>().kamaytir();
                        },
                      ),
                      SizedBox(
                        height: getProportionScreenHeight(40),
                        width: getProportionScreenWidth(50),
                        child: Center(
                          child: AutoSizeText(
                            context.watch<CounterProvider>().sanoq.toString(),
                            style: TextStyle(
                                fontSize: getProportionScreenHeight(20)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: ButtonContainer(
                          color:  Constants.yashilRang,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          context.read<CounterProvider>().oshir();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: Text(
                "\$ ${4.99}/Kg",
                style: TextStyle(fontSize: getProportionScreenHeight(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(40)),
              child: Text(
                "Details",
                style: TextStyle(color: Constants.darkGrey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(16)),
              child: SizedBox(
                height: getProportionScreenHeight(66),
                width: getProportionScreenWidth(374),
                child: Text(
                  "Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..Read more",
                  style: TextStyle(
                      color: Constants.greyRang,
                      fontSize: getProportionScreenHeight(13)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(16)),
              child: listileMy(
               
                title: Text(
                  "Time Delivery",
                  style: TextStyle(fontSize: getProportionScreenHeight(18)),
                ),
                subtitle: const Text("25-30 min"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
              child: listileMy(
                
                title: Text(
                  "Category",
                  style: TextStyle(
                    fontSize: getProportionScreenHeight(18),
                  ),
                ),
                subtitle: Text(
                  "Vegetable",
                  style: TextStyle(color: Constants.greyRang),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20),
                  right: getProportionScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddToCard(onTap: () {}, name: "Add to Card"),
                  FloatingActionButton(
                      backgroundColor: Colors.grey.shade200,
                      elevation: 0,
                      onPressed: () {},
                      child: SvgPicture.asset("assets/images/chat.svg"))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
