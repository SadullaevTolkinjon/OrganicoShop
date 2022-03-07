import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/functions/sign_in_functions.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController _numberController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController2 = TextEditingController();
  final GlobalKey _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(32),
                    top: getProportionScreenHeight(35)),
                child: SizedBox(
                  height: getProportionScreenHeight(318),
                  width: getProportionScreenWidth(349),
                  child: Image.asset("assets/images/sign.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(40),
                ),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: getProportionScreenHeight(20),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(10),
                  right: getProportionScreenWidth(20),
                ),
                child: SizedBox(
                  width: getProportionScreenWidth(374),
                  height: getProportionScreenHeight(44),
                  child: Text(
                    "Welcome to Organico Mobile Apps. Please fill in the field below to sign in",
                    style: TextStyle(
                        color: Constants.greyRang, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionScreenHeight(30),
                  left: getProportionScreenWidth(18),
                  right: getProportionScreenWidth(24),
                ),
                child: Form(
                  key: _formKey,
                  child: TextFieldMy(
                    controller: _numberController,
                    hintText: "Your phone number",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionScreenHeight(20),
                  left: getProportionScreenWidth(18),
                  right: getProportionScreenWidth(24),
                ),
                child: Form(
                  key: _formKey2,
                  child: TextFieldMy(
                    controller: _numberController2,
                    hintText: "Password",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(242),
                    top: getProportionScreenHeight(15)),
                child: GestureDetector(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Constants.yashilRang),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/forgotpass");
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: ElevatedSign(
                  onTap: () {
                    LoginWithPhone.SignIn(context, _numberController.text);
                  },
                  name: "Sign in",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getProportionScreenWidth(200)),
                child: const Text("or"),
              ),
              Padding(
                padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                child: ElevatedSign(
                  onTap: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  name: "New Registration",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
