import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class ChangeNumberPage extends StatelessWidget {
  ChangeNumberPage({Key? key}) : super(key: key);
  final TextEditingController _smsCodeController = TextEditingController();

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
              text: "OTAC Number",
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getProportionScreenHeight(30),
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20)),
              child: SizedBox(
                height: getProportionScreenHeight(66),
                width: double.infinity,
                child: Text(
                  "It looks like you changed your phone number. Please enter the OTAC number that we have sent to your new phone number.",
                  style: TextStyle(
                      fontSize: getProportionScreenHeight(13),
                      color: Constants.greyRang),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(40)),
              child: TextFieldMy(
                hintText: "6 Digit Code",
                controller: _smsCodeController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Resend Code",
                    style: TextStyle(color: Constants.yashilRang),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionScreenWidth(20),top: getProportionScreenHeight(86)),
              child: ElevatedSign(
                name: "Confirm",
                onTap: () {
                 
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
