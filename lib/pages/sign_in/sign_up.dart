import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/functions/sign_in_functions.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/provider/newRegistr_provider.dart';
import 'package:provider/provider.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({Key? key}) : super(key: key);

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  final TextEditingController _fullNamecontroller1 = TextEditingController();

  final GlobalKey _keyController1 = GlobalKey<FormState>();

  final TextEditingController _passWordcontroller2 = TextEditingController();

  final GlobalKey _keyController2 = GlobalKey<FormState>();

  final TextEditingController _controller3 = TextEditingController();

  final GlobalKey _keyController3 = GlobalKey<FormState>();

  bool checkBoxValue = false;

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
                text: "New Registration",
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(40)),
                child: SizedBox(
                  height: getProportionScreenHeight(66),
                  child: Text(
                    "It looks like you don't have an account on this number.Please let us know some information for a secure service.",
                    style: TextStyle(
                        color: Constants.greyRang,
                        fontSize: getProportionScreenHeight(13)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(40)),
                child: Text(
                  "Full Name",
                  style: TextStyle(fontSize: getProportionScreenHeight(16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10),
                    right: getProportionScreenWidth(20)),
                child: Form(
                    key: _keyController1,
                    child: TextFieldMy(
                      controller: _fullNamecontroller1,
                      hintText: "Full Name",
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(8)),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: getProportionScreenHeight(16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10),
                    right: getProportionScreenWidth(20)),
                child: Form(
                    key: _keyController2,
                    child: TextFieldMy(
                      controller: _passWordcontroller2,
                      hintText: "Password",
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10)),
                child: Text(
                  "Phone number",
                  style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10)),
                child: Form(
                  child: TextFieldMy(
                    controller: _controller3,
                    hintText: "Your phone number",
                    icon: Icon(
                      Icons.phone_android_outlined,
                      color: Constants.yashilRang,
                    ),
                  ),
                  key: _keyController3,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(15)),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Constants.yashilRang,
                        value: context.watch<NewRegistrProvider>().checkboxVal,
                        onChanged: (val) {
                          context.read<NewRegistrProvider>().ozgartirVal();
                        }),
                    Text(
                      "I accept the Terms of use and Privicy Policy",
                      style:
                          TextStyle(fontSize: 13, color: Constants.yashilRang),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionScreenHeight(40),
                    left: getProportionScreenWidth(20)),
                child: ElevatedSign(
                  onTap: () async {
                    LoginWithPhone.loginWithPhone(_controller3.text,);
                    setState(() {});
                    Navigator.pushNamed(context, "/sms");
                  },
                  name: "Sign up",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(180),
                    top: getProportionScreenHeight(20)),
                child: Text(
                  "or use",
                  style: TextStyle(color: Constants.greyRang),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20)),
                child: const ElevatedButtonWithGoogle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
