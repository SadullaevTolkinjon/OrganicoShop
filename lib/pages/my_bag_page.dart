import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class MyBag extends StatelessWidget {
  const MyBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarContainer(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                text: "My Bag",
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: Container(
                  height: getProportionScreenHeight(368),
                  width: getProportionScreenWidth(374),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getProportionScreenHeight(12),
                    ),
                    border: Border.all(color: Constants.greyRang),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionScreenWidth(10),
                            top: getProportionScreenHeight(10)),
                        child: ListTile(
                          leading:
                              SvgPicture.asset("assets/images/yashilhome.svg"),
                          title: Text(
                            "Popey Shop-Tashkent",
                            style: TextStyle(
                              fontSize: getProportionScreenHeight(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionScreenHeight(300),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: getProportionScreenHeight(10)),
                              child: Container(
                                height: getProportionScreenHeight(114),
                                width: getProportionScreenWidth(342),
                                decoration: BoxDecoration(
                                  color: Constants.ochYashil,
                                  borderRadius: BorderRadius.circular(
                                    getProportionScreenHeight(12),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionScreenWidth(20)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: getProportionScreenHeight(55),
                                        width: getProportionScreenWidth(64),
                                        child: Image.asset(
                                            "assets/images/vegetable.png"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: getProportionScreenWidth(20)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top:
                                                      getProportionScreenHeight(
                                                          10),
                                                  bottom:
                                                      getProportionScreenHeight(
                                                          6)),
                                              child: Text(
                                                "Broccoli",
                                                style: TextStyle(
                                                    fontSize:
                                                        getProportionScreenHeight(
                                                            16)),
                                              ),
                                            ),
                                            Text(
                                              "1 Kilogram",
                                              style: TextStyle(
                                                  fontSize:
                                                      getProportionScreenHeight(
                                                          13),
                                                  color: Constants.greyRang),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top:
                                                      getProportionScreenHeight(
                                                          6)),
                                              child: Text(
                                                "\$ 4.99",
                                                style: TextStyle(
                                                    fontSize:
                                                        getProportionScreenHeight(
                                                            16)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: getProportionScreenWidth(30)),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              child: kichikButton(
                                                icon: const Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {},
                                            ),
                                            SizedBox(
                                              height:
                                                  getProportionScreenHeight(32),
                                              width:
                                                  getProportionScreenWidth(32),
                                              child: const Center(
                                                child: AutoSizeText("1"),
                                              ),
                                            ),
                                            GestureDetector(
                                              child: kichikButton(
                                                icon: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onTap: () {},
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionScreenHeight(28),
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20)),
                child: ElevatedOqRang(ontap: (){},name: "Add more",),
              ),
              textBagMy(text: "Address"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: Container(
                  height: getProportionScreenHeight(91),
                  width: getProportionScreenWidth(374),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getProportionScreenHeight(12),
                    ),
                    border: Border.all(color: Constants.greyRang),
                  ),
                  child: ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: getProportionScreenHeight(18)),
                    ),
                    subtitle: Text(
                      "3517 W. Gray St. Utica, Pennsylvania 57867",
                      style: TextStyle(fontSize: getProportionScreenHeight(12)),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                ),
              ),
              textBagMy(
                text: "Note",
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenHeight(20),
                    top: getProportionScreenHeight(20)),
                child: Container(
                  height: getProportionScreenHeight(129),
                  width: getProportionScreenWidth(374),
                  decoration: BoxDecoration(
                      border: Border.all(color: Constants.greyRang),
                      borderRadius:
                          BorderRadius.circular(getProportionScreenHeight(10))),
                  child: Column(
                    children: [
                      Text(
                        "Please check the product before packaging.",
                        style: TextStyle(
                          fontSize: getProportionScreenHeight(13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              textBagMy(text: "Coupon"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: cuponContainerRangsiz(
                  title: "Free Shipping",
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              textBagMy(text: "Payment method"),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20),
                ),
                child: cuponContainerRangsiz(
                  title: "Credit Card",
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios)),
                ),
              ),
              subtotalText(
                text1: "Subtotal",
                text2: "\$ 4.99",
              ),
              subtotalText(
                text1: "Delivery chsrge",
                text2: "\$ 1",
              ),
              subtotalText(
                text1: "Coupon",
                text2: "-\$ 1",
              ),
              subtotalText(
                text1: "Total",
                text2: "\$ 9.49",
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionScreenHeight(40),
                    left: getProportionScreenWidth(20),
                    bottom: getProportionScreenHeight(40)),
                child: ElevatedSign(
                  onTap: () {
                    Navigator.pushNamed(context, "/order");
                  },
                  name: "Order now",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

