import 'package:flutter/material.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final TextEditingController _currentPAssword = TextEditingController();
  final TextEditingController _newPAssword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
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
              text: "Change PAssword",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: SizedBox(
                width: double.infinity,
                height: getProportionScreenHeight(44),
                child: Text(
                  "Please fill in the field below to change your current password.",
                  style: TextStyle(fontSize: getProportionScreenHeight(13)),
                ),
              ),
            ),
            textBagMy(text: "Current Password"),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20),
                top: getProportionScreenHeight(15),
              ),
              child: TextFieldMy(
                hintText: "Current Password",
                controller: _currentPAssword,
              ),
            ),
            textBagMy(text: "New Password"),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(15)),
              child: TextFieldMy(
                  hintText: "New Password", controller: _newPAssword),
            ),
            textBagMy(text: "New Password Confirmation"),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(15),
                right: getProportionScreenWidth(20),
              ),
              child: TextFieldMy(
                hintText: "New Password Confirmation",
                controller: _confirmPassword,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(45),
              ),
              child: ElevatedSign(
                name: "Save password",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
