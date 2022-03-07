import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarContainer(
                leading: Text(
                  "My Cart",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
                text: "",
              ),
              cartContainer(),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(240)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(13),
                              color: Constants.greyRang),
                        ),
                        Text(
                          "\$ 9.58",
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(18)),
                        )
                      ],
                    ),
                    AddToBag(
                        onTap: () {
                          Navigator.pushNamed(context, "/bag");
                        },
                        name: "Add to Bag")
                  ],
                ),
              )
            ],
          );
  }
}


