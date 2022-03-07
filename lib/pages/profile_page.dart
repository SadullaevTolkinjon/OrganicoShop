
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ProfilePAge extends StatelessWidget {
  const ProfilePAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppbarContainer(
          leading: Text(
            "Profile",
            style: TextStyle(fontSize: getProportionScreenHeight(20)),
          ),
          text: "",
          trailing: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/notification");
            },
            icon: const Icon(Icons.notifications),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionScreenWidth(120),
          ),
          child: CircleAvatar(
            radius: getProportionScreenHeight(90),
            backgroundColor: Colors.amber,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(160),
              top: getProportionScreenHeight(7)),
          child: Text(
            "Jane Doe",
            style: TextStyle(fontSize: getProportionScreenHeight(18)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(160),
              top: getProportionScreenHeight(5)),
          child: Text(
            "90 0119788",
            style: TextStyle(
                color: Constants.greyRang,
                fontSize: getProportionScreenHeight(16)),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/edit_profile");
          },
          leading: SvgPicture.asset("assets/images/profile.svg"),
          title: const Text("Edit Profile"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/myorder.svg"),
          title: const Text("My Orders"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/favorite_icon.svg"),
          title: const Text("My Wishlist"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/adress_icon.svg"),
          title: const Text("My Address"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, "/my_address");
          },
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/payment_icon.svg"),
          title: const Text("Payment Method"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, "/payment");
          },
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/customer+icon.svg"),
          title: const Text("Customer Service"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/password_icon.svg"),
          title: const Text("Change Password"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, "/change_password");
          },
        ),
        ListTile(
          leading: SvgPicture.asset("assets/images/logout_icon.svg"),
          title: const Text("Log Out"),
          trailing: const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }
}
