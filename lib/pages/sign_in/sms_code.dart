import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/functions/sign_in_functions.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class SmsCode extends StatelessWidget {
  var nomer;
  SmsCode({Key? key, this.nomer}) : super(key: key);
  final TextEditingController _smsController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
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
                text: "Otac Number",
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(70),
                    top: getProportionScreenHeight(40)),
                child: Text(
                  "Enter Authorization Code",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionScreenWidth(130),
                ),
                child: Text(
                  "We have sent SMS to:",
                  style: TextStyle(color: Constants.greyRang, fontSize: 13),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionScreenWidth(130),
                ),
                child: const Text(
                  "+998 90 011 95 97",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(40)),
                child: Form(
                    key: _formKey,
                    child: TextFieldMy(
                      controller: _smsController,
                      hintText: "6 Digit Code",
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(270),
                    top: getProportionScreenHeight(25)),
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: Constants.yashilRang),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(40)),
                child: ElevatedSign(
                    onTap: () {
                      LoginWithPhone.verifyOTP(_smsController.text,);
                      Navigator.pushNamed(context, "/home");
                     
                    },
                    name: "Next"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
