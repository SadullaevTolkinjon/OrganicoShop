import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key}) : super(key: key);
  final TextEditingController _newPasswordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _resetedPAssController = TextEditingController();
  final GlobalKey _resetFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarContainer(leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
                text: "Reset Password",
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionScreenHeight(40),
                    left: getProportionScreenWidth(20)),
                child: SizedBox(
                  height: getProportionScreenHeight(44),
                  width: getProportionScreenWidth(374),
                  child: Text(
                    "Please fill in the field below to reset your current paassword",
                    style: TextStyle(color: Constants.greyRang, fontSize: 13),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(48)),
                child: Text(
                  "New Password",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10)),
                child: TextFieldMy(
                  controller: _newPasswordController,
                  hintText: "New password",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(10)),
                child: Text(
                  "New Password Confirmation",
                  style: TextStyle(fontSize: getProportionScreenHeight(20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(15)),
                child: TextFieldMy(
                  controller: _newPasswordController,
                  hintText: "New Password Confirmation",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(40)),
                child: ElevatedSign(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    name: "Reset Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
