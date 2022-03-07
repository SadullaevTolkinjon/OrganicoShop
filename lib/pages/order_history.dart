import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          height: getProportionScreenHeight(182),
          width: getProportionScreenWidth(374),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius:
                  BorderRadius.circular(getProportionScreenHeight(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(16),
                    right: getProportionScreenWidth(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popey Shop-Tashkent",
                      style: TextStyle(fontSize: getProportionScreenHeight(16)),
                    ),
                    Text(
                      "Confirmed",
                      style: TextStyle(
                          color: Constants.yashilRang,
                          fontSize: getProportionScreenHeight(13)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(20)),
                child: Row(
                  children: [
                    SizedBox(
                      height: getProportionScreenHeight(49),
                      width: getProportionScreenWidth(330),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(5)),
                            child: Container(
                              height: getProportionScreenHeight(49),
                              width: getProportionScreenWidth(49),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getProportionScreenHeight(10)),
                                  color: Constants.ochYashil),
                              child: Image.asset("assets/images/vegetable.png"),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    right: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "02 Mar 2022",
                      style: TextStyle(
                          fontSize: getProportionScreenHeight(13),
                          color: Constants.greyRang),
                    ),
                    DetailsButton(
                        onTap: () {
                          Navigator.pushNamed(context, "/bag");
                        },
                        name: "Order again")
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionScreenHeight(20),
        ),
        Container(
          height: getProportionScreenHeight(182),
          width: getProportionScreenWidth(374),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius:
                  BorderRadius.circular(getProportionScreenHeight(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(16),
                    right: getProportionScreenWidth(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popey Shop-Tashkent",
                      style: TextStyle(fontSize: getProportionScreenHeight(16)),
                    ),
                    Text(
                      "Cancelled",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: getProportionScreenHeight(13)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(20)),
                child: Row(
                  children: [
                    SizedBox(
                      height: getProportionScreenHeight(49),
                      width: getProportionScreenWidth(330),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(5)),
                            child: Container(
                              height: getProportionScreenHeight(49),
                              width: getProportionScreenWidth(49),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getProportionScreenHeight(10)),
                                  color: Constants.ochYashil),
                              child: Image.asset("assets/images/vegetable.png"),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(16),
                    right: getProportionScreenWidth(16),
                    top: getProportionScreenHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "02 Mar 2022",
                      style: TextStyle(
                          fontSize: getProportionScreenHeight(13),
                          color: Colors.red),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/bag");
                      },
                      child: Text("Order again"),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.red,
                        minimumSize: Size(
                          getProportionScreenWidth(151),
                          getProportionScreenHeight(37),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
