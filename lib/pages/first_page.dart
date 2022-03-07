import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico_ui/core/size_config/size_config.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final _initFireBase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: InkWell(
          child: SizedBox(
            height: getProportionScreenHeight(203),
            width: getProportionScreenWidth(143),
            child: Image.asset(
              "assets/images/Logo.png",
           
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/signin");
          },
        ),
      ),
    );
  }
}
