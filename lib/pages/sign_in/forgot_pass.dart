import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ForgotPassWord extends StatelessWidget {
  ForgotPassWord({Key? key}) : super(key: key);
  final TextEditingController _phoneNumberController = TextEditingController();
  final GlobalKey _keyController = GlobalKey<FormState>();

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
                text: "Forgot Password",
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionScreenHeight(20),
                    left: getProportionScreenWidth(20)),
                child: SizedBox(
                  height: getProportionScreenHeight(345),
                  width: getProportionScreenWidth(349),
                  child: Image.asset("assets/images/reset.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(70)),
                child: Text(
                  "Enter your phone number",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(15)),
                child: SizedBox(
                  height: getProportionScreenHeight(44),
                  width: getProportionScreenWidth(374),
                  child: Text(
                    "We need to verify you. We will send you a one-time authorization code.",
                    style: TextStyle(color: Constants.greyRang, fontSize: 13),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10)),
                child: Form(
                  key: _keyController,
                  child: TextFieldMy(
                    controller: _phoneNumberController,
                    hintText: "Your phone number",
                    icon: Icon(
                      Icons.phone_android_outlined,
                      color: Constants.yashilRang,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(60)),
                child: ElevatedSign(
                    onTap: () {
                      Navigator.pushNamed(context, "/sms",
                          arguments: _phoneNumberController.text);
                    },
                    name: "Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
