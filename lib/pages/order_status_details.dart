import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class OrderStatusDetails extends StatelessWidget {
  const OrderStatusDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarContainer(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            text: "Order Status Details",
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20),
                top: getProportionScreenHeight(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/images/checkrangsiz.svg"),
                rangliKerakliKontainer(
                  child: const ListTile(
                    title: Text("Order Completed"),
                    subtitle: Text(
                      "--:--",
                    ),
                  ),
                  rang: Colors.grey.shade200,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(30),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/images/checkrangsiz.svg"),
                rangliKerakliKontainer(
                  child: ListTile(
                    title: const Text("On delivery"),
                    subtitle: const Text(
                      "09:50 AM",
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, "/ondelivery");
                    },
                  ),
                  rang: Colors.grey.shade200,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(30),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/checkrangli.svg",
                ),
                rangliKerakliKontainer(
                  child: const ListTile(
                    title: Text("Order confirmed"),
                    subtitle: Text(
                      "09:55 AM",
                    ),
                  ),
                  rang: Constants.ochYashil,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(30),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/checkrangli.svg",
                ),
                rangliKerakliKontainer(
                  child: const ListTile(
                    title: Text("Order recieved"),
                    subtitle: Text(
                      "09:55 AM",
                    ),
                  ),
                  rang: Constants.ochYashil,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class rangliKerakliKontainer extends StatelessWidget {
  var child;
  var rang;
  rangliKerakliKontainer({Key? key, required this.child, this.rang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(91),
      width: getProportionScreenWidth(310),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(12),
          ),
          color: rang),
      child: Center(
        child: child,
      ),
    );
  }
}
