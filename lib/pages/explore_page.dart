import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarContainer(
                leading: Text(
                  "Explore",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
                text: "",
                trailing: SvgPicture.asset("assets/images/filter.svg"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: getProportionScreenWidth(5),
                      mainAxisExtent: getProportionScreenHeight(242),
                      mainAxisSpacing: getProportionScreenHeight(20)),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(left: getProportionScreenWidth(10),right: getProportionScreenWidth(10)),
                      child: Container(
                        height: getProportionScreenHeight(242),
                        width: getProportionScreenWidth(196),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(151, 3, 29, 0.15),
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
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(20)),
                              child: Text(
                                "Vegshop",
                                style: TextStyle(color: Constants.greyRang),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(20),
                                  right: getProportionScreenWidth(10),
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
                                          minimumSize: Size(
                                              getProportionScreenWidth(40),
                                              getProportionScreenWidth(40)),
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
                      ),
                    );
                  },
                ),
              )
            ],
          );
  }
}
