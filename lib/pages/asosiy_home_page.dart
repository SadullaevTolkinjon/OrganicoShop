import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/provider/home_page_provider.dart';
import 'package:provider/src/provider.dart';

class AsosiyPage extends StatelessWidget {
  const AsosiyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: getProportionScreenWidth(154)),
          child: Text(
            "Your Location",
            style: TextStyle(color: Constants.darkGrey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: getProportionScreenWidth(125)),
          child: LocationCity(context),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(20),
              right: getProportionScreenWidth(20),
              top: getProportionScreenHeight(10)),
          child: TextFormField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "Search anything here",
              contentPadding:
                  EdgeInsets.only(top: getProportionScreenHeight(10)),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(getProportionScreenHeight(80)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: getProportionScreenHeight(25)),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/cupon");
            },
            title: const Text("You have 3 cupon"),
            subtitle: const Text(
              "Let's use the cupon",
              style: TextStyle(fontSize: 13),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(20),
              right: getProportionScreenWidth(20),
              top: getProportionScreenHeight(20)),
          child: textRow(
            text1: "Choose Category",
            seeAll: "See all",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(20),
              top: getProportionScreenHeight(16)),
          child: SizedBox(
            height: getProportionScreenHeight(134),
            width: getProportionScreenWidth(401),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: getProportionScreenWidth(16)),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    height: getProportionScreenHeight(134),
                    width: getProportionScreenWidth(123),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getProportionScreenHeight(20),
                        ),
                        color: const Color.fromRGBO(118, 178, 38, 0.15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/images/vegetable.png"),
                        ),
                        const Text("Vegetable")
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/category");
                  },
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: getProportionScreenHeight(30),
              left: getProportionScreenWidth(20),
              right: getProportionScreenWidth(20)),
          child: textRow(text1: "Best Selling", seeAll: "See all"),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(20),
              top: getProportionScreenHeight(16)),
          child: SizedBox(
            height: getProportionScreenHeight(242),
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 12),
              itemBuilder: (context, index) {
                return Container(
                  height: getProportionScreenHeight(242),
                  width: getProportionScreenWidth(196),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(227, 85, 63, 0.15),
                    borderRadius: BorderRadius.circular(
                      getProportionScreenHeight(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getProportionScreenHeight(20),
                            left: getProportionScreenWidth(20)),
                        child: SizedBox(
                          child: Image.asset("assets/images/balgar1.png"),
                          height: getProportionScreenHeight(79),
                          width: getProportionScreenWidth(97),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionScreenWidth(20),
                            top: getProportionScreenHeight(20)),
                        child: Text(
                          "Paprika",
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(20)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(20)),
                        child: Text(
                          "Vegshop",
                          style: TextStyle(color: Constants.greyRang),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionScreenWidth(20),
                            right: getProportionScreenWidth(20),
                            top: getProportionScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "\$ ${4.99}/ Kg",
                              style: TextStyle(
                                  fontSize: getProportionScreenHeight(16)),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Constants.yashilRang),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/detail");
                                },
                                child: const Icon(Icons.add))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      )
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        )
      ],
    );
  }
   Row LocationCity(BuildContext context) {
    return Row(
      children: [
        Text(
            "Tashkent,${context.watch<HomePageProvider>().popupvalue.toUpperCase()}"),
        PopupMenuButton(
          onSelected: (val) {
            context.read<HomePageProvider>().ozgartirish(val);
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text("Sergeli"),
              value: "sergeli",
            ),
            const PopupMenuItem(
              child: Text("Chilonzor"),
              value: "chilonzor",
            )
          ],
        ),
      ],
    );
  }
}


