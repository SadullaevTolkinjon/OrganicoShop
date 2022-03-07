import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/provider/cancel_provider.dart';

import 'package:provider/provider.dart';

class CancelPage extends StatelessWidget {
  const CancelPage({Key? key}) : super(key: key);

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
            text: "Cancellation Reason",
          ),
          textBagMy(text: "Select a reason for a cancellation"),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(20)),
            child: Container(
              height: getProportionScreenHeight(62),
              width: getProportionScreenWidth(374),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getProportionScreenHeight(10),
                  ),
                  color: context.watch<CancelLationProvider>().qiymat == true
                      ? Constants.ochYashil
                      : Colors.grey.shade200),
              child: ListTile(
                title: const Text("Want to change amount"),
                onTap: () {
                  context.read<CancelLationProvider>().ozgartir();
                },
              ),
            ),
          ),
          cancelContainer(
            text: "Want to change the shipping method",
          ),
          cancelContainer(
            text: "Wrongly bouth a food",
          ),
          cancelContainer(
            text: "Etc",
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(300)),
            child: ElevatedSign(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              name: "Submit",
            ),
          )
        ],
      )),
    );
  }
}

class cancelContainer extends StatelessWidget {
  var text;
  cancelContainer({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionScreenWidth(20),
          top: getProportionScreenHeight(20)),
      child: Container(
        height: getProportionScreenHeight(62),
        width: getProportionScreenWidth(374),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getProportionScreenHeight(10),
            ),
            color: Colors.grey.shade200),
        child: ListTile(
          title: Text(text),
        ),
      ),
    );
  }
}
