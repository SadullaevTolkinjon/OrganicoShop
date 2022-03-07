import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

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
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            text: "Notification Settings",
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20),
                top: getProportionScreenHeight(30)),
            child: RowSwitch(
              text: "In App Notification",
              val: context.watch<SettingsProvider>().inAppVal,
              onchanged: (v) {
                context.read<SettingsProvider>().ozgartirQiymatni();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionScreenWidth(20),right: getProportionScreenWidth(20),top: getProportionScreenHeight(15)),
            child: RowSwitch(
              text: "New Promo",
              val: context.watch<SettingsProvider>().newPromoVal,
              onchanged: (v) {
                context.read<SettingsProvider>().ozgartirPromo();
              },
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: getProportionScreenWidth(20),right: getProportionScreenWidth(20),top: getProportionScreenHeight(15)),
            child: RowSwitch(
              text: "Tip & tricks",
              val: context.watch<SettingsProvider>().tipsVal,
              onchanged: (v) {
                context.read<SettingsProvider>().ozgartirTips();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionScreenWidth(20),right: getProportionScreenWidth(20),top: getProportionScreenHeight(15)),
            child: RowSwitch(
              text: "Update application",
              val: context.watch<SettingsProvider>().updateVal,
              onchanged: (v) {
                context.read<SettingsProvider>().ozgartirTips();
              },
            ),
          )
        ],
      )),
    );
  }
}
