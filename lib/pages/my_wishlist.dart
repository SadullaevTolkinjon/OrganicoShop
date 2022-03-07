import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class MyWishlistPage extends StatelessWidget {
  const MyWishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarContainer(text: "My Wishlist",leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: getProportionScreenWidth(18),
                    mainAxisExtent: getProportionScreenHeight(179),
                    mainAxisSpacing: getProportionScreenHeight(12)),
                itemBuilder: (context, index) {
                  return Container(
                    height: getProportionScreenHeight(179),
                    width: getProportionScreenWidth(180),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(getProportionScreenHeight(20)),
                      color: const Color.fromRGBO(227, 85, 63, 0.15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(16),
                              right: getProportionScreenWidth(10),
                              top: getProportionScreenHeight(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: getProportionScreenHeight(75),
                                width: getProportionScreenWidth(92),
                                child: Image.asset("assets/images/balgar1.png"),
                              ),
                              ButtonContainer(
                                color: Colors.red,
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(16),
                              top: getProportionScreenHeight(20)),
                          child: Text(
                            "Paprika",
                            style: TextStyle(
                                fontSize: getProportionScreenHeight(16)),
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(16),
                              top: getProportionScreenHeight(8)),
                          child: Text(
                            "1 Kilogramm",
                            style: TextStyle(
                                fontSize: getProportionScreenHeight(13),color: Constants.greyRang),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
