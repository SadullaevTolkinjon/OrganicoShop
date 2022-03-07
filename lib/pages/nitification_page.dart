import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppbarContainer(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              text: "Notification",
              trailing: IconButton(
                icon:  Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, "/notification_settings");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getProportionScreenHeight(20)),
              child: notification_container(
                icon: SvgPicture.asset("assets/images/cargo.svg"),
                title: "Order Status",
                subtitle1:
                    "Congratulations, your order has been sent. You can check here.",
                subtitle2: "25 Feb 2021 06:15 AM",
              ),
            ),
            notification_container(
              icon: SvgPicture.asset("assets/images/promo.svg"),
              title: "New Promo",
              subtitle1:
                  "15% discount for all purchases above \$20. Check it now.",
              subtitle2: "25 Feb 2021 05:00 AM",
            ),
            notification_container(
              icon: SvgPicture.asset("assets/images/tips.svg"),
              title: "Tips",
              subtitle1:
                  "Let’s learn how to maximize the use of vouchers in the application.",
              subtitle2: "24 Feb 2021 02:00 PM",
            )
          ],
        ),
      ),
    );
  }
}

class notification_container extends StatelessWidget {
  var icon;
  var title;
  var subtitle1;
  var subtitle2;
  notification_container(
      {Key? key, this.icon, this.title, this.subtitle1, this.subtitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(134),
      width: getProportionScreenWidth(414),
      color: Constants.ochYashil,
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(fontSize: getProportionScreenHeight(20)),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle1),
            SizedBox(
              height: getProportionScreenHeight(10),
            ),
            Text(subtitle2)
          ],
        ),
      ),
    );
  }
}
