import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class OrderStatusCompletedPage extends StatelessWidget {
  const OrderStatusCompletedPage({Key? key}) : super(key: key);

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
                text: "Popey Shop-Tashkent",
              ),
              textBagMy(text: "Order Status"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: KerakliContainer(
                  child: ListTile(
                    title: const Text("Completed"),
                    subtitle: const Text("09:50 AM"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, "/orderstatus_details");
                    },
                  ),
                ),
              ),
              textBagMy(text: "Overview"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: Container(
                  height: getProportionScreenHeight(210),
                  width: getProportionScreenWidth(374),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getProportionScreenHeight(12),
                    ),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subtotalText(
                        text1: "Order Id",
                        text2: "12345678",
                      ),
                      subtotalText(
                        text1: "Shop Name",
                        text2: "Popey Shop-Tashkent",
                      ),
                      subtotalText(
                        text1: "Date",
                        text2: "2 Mar 2021",
                      ),
                      subtotalText(
                        text1: "Notes",
                        text2: "Please check",
                      )
                    ],
                  ),
                ),
              ),
              textBagMy(text: "Order Summary"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: KerakliContainer(
                    child: SizedBox(
                  height: getProportionScreenHeight(70),
                  width: getProportionScreenWidth(330),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(5)),
                        child: Container(
                          height: getProportionScreenHeight(70),
                          width: getProportionScreenWidth(70),
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
                )),
              ),
              textBagMy(text: "Delivery"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: KerakliContainerKottaro(
                    child: Padding(
                  padding: EdgeInsets.only(
                      left: getProportionScreenWidth(20),
                      right: getProportionScreenWidth(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/images/location.svg"),
                          Text(
                            "4517 Chilanzar Ave. Tashkent 39495",
                            style: TextStyle(
                                color: Constants.greyRang,
                                fontSize: getProportionScreenHeight(13)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(35)),
                            child: Text(
                              "Home",
                              style: TextStyle(color: Constants.greyRang),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
              ),
              textBagMy(text: "Coupon"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: cuponContainerRangsiz(
                  title: "Free Shipping",
                ),
              ),
              textBagMy(text: "Payment method"),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: cuponContainerRangsiz(
                  title: "Credit Card",
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
                      left: getProportionScreenWidth(20),
                      top: getProportionScreenHeight(24)),
                  child: ElevatedSign(
                    name: "Order again",
                    onTap: () {
                      Navigator.pushNamed(context, "/bag");
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(24),
                    bottom: getProportionScreenHeight(40)),
                child: ElevatedOqRang(
                  ontap: () {},
                  name: "Rate now",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
