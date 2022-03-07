import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';

class ElevatedSign extends StatelessWidget {
  var onTap;
  var name;
  ElevatedSign({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Constants.elevatedYashilRang,
        minimumSize: Size(
          getProportionScreenWidth(374),
          getProportionScreenHeight(50),
        ),
      ),
    );
  }
}

class TextFieldMy extends StatelessWidget {
  final controller;
  var hintText;
  var icon;

  TextFieldMy({
    required this.hintText,
    required this.controller,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        contentPadding: Constants.padding,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Constants.yashilRang),
            borderRadius:
                BorderRadius.circular(getProportionScreenHeight(100))),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(100),
          ),
        ),
      ),
    );
  }
}

class AppbarContainer extends StatelessWidget {
  var text;
  var trailing;
  var leading;
  AppbarContainer({Key? key, this.text, this.trailing, this.leading})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: getProportionScreenHeight(64),
      width: getProportionScreenWidth(414),
      child: ListTile(
        leading: leading,
        title: Text(
          text,
          style: TextStyle(
            fontSize: getProportionScreenHeight(20),
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}

class ElevatedButtonWithGoogle extends StatelessWidget {
  const ElevatedButtonWithGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        "Sign up with Google",
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(side: BorderSide(color: Colors.black)),
        primary: Colors.white,
        elevation: 0,
        minimumSize: Size(
          getProportionScreenWidth(374),
          getProportionScreenHeight(50),
        ),
      ),
    );
  }
}

class textRow extends StatelessWidget {
  var text1;
  var seeAll;
  textRow({Key? key, required this.text1, required this.seeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: getProportionScreenHeight(20)),
        ),
        Text(
          seeAll,
          style: TextStyle(color: Constants.greyRang),
        )
      ],
    );
  }
}

class ButtonContainer extends StatelessWidget {
  var icon;
  var color;
  ButtonContainer({Key? key, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(40),
      width: getProportionScreenWidth(40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(10),
          ),
          color: color),
      child: icon,
    );
  }
}

class listileMy extends StatelessWidget {
  var title;
  var subtitle;
  var trailing;
  var ontap;
  listileMy({Key? key, this.subtitle, this.title, this.trailing, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: SvgPicture.asset("assets/images/iconsvg.svg"),
      title: title,
      trailing: trailing,
      subtitle: subtitle,
    );
  }
}

class AddToCard extends StatelessWidget {
  var onTap;
  var name;
  AddToCard({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Constants.yashilRang,
        minimumSize: Size(
          getProportionScreenWidth(298),
          getProportionScreenHeight(52),
        ),
      ),
    );
  }
}

class cuponContainer extends StatelessWidget {
  var title;
  var subtitle;
  cuponContainer({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(91),
      width: getProportionScreenWidth(371),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(46, 204, 113, 0.15),
          borderRadius: BorderRadius.circular(getProportionScreenHeight(12))),
      child: listileMy(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

class cuponContainer2 extends StatelessWidget {
  var title;
  var subtitle;
  cuponContainer2({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(91),
      width: getProportionScreenWidth(371),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(46, 146, 157, 0.05),
          borderRadius: BorderRadius.circular(getProportionScreenHeight(12))),
      child: listileMy(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

class kichikButton extends StatelessWidget {
  var icon;
  kichikButton({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(32),
      width: getProportionScreenWidth(32),
      decoration: BoxDecoration(
        color: Constants.yashilRang,
        borderRadius: BorderRadius.circular(
          getProportionScreenHeight(10),
        ),
      ),
      child: Center(child: icon),
    );
  }
}

class AddToBag extends StatelessWidget {
  var onTap;
  var name;
  AddToBag({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Constants.yashilRang,
        minimumSize: Size(
          getProportionScreenWidth(266),
          getProportionScreenHeight(52),
        ),
      ),
    );
  }
}

class cartContainer extends StatelessWidget {
  const cartContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionScreenWidth(20),
          top: getProportionScreenHeight(20)),
      child: Container(
        height: getProportionScreenHeight(368),
        width: getProportionScreenWidth(374),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(12),
          ),
          border: Border.all(color: Constants.greyRang),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(10),
                  top: getProportionScreenHeight(10)),
              child: ListTile(
                leading: SvgPicture.asset("assets/images/yashilhome.svg"),
                title: Text(
                  "Popey Shop-Tashkent",
                  style: TextStyle(
                    fontSize: getProportionScreenHeight(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionScreenHeight(300),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(10)),
                    child: Container(
                      height: getProportionScreenHeight(114),
                      width: getProportionScreenWidth(342),
                      decoration: BoxDecoration(
                        color: Constants.ochYashil,
                        borderRadius: BorderRadius.circular(
                          getProportionScreenHeight(12),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(20)),
                        child: Row(
                          children: [
                            SizedBox(
                              height: getProportionScreenHeight(55),
                              width: getProportionScreenWidth(64),
                              child: Image.asset("assets/images/vegetable.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(20)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: getProportionScreenHeight(10),
                                        bottom: getProportionScreenHeight(6)),
                                    child: Text(
                                      "Broccoli",
                                      style: TextStyle(
                                          fontSize:
                                              getProportionScreenHeight(16)),
                                    ),
                                  ),
                                  Text(
                                    "1 Kilogram",
                                    style: TextStyle(
                                        fontSize: getProportionScreenHeight(13),
                                        color: Constants.greyRang),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: getProportionScreenHeight(6)),
                                    child: Text(
                                      "\$ 4.99",
                                      style: TextStyle(
                                          fontSize:
                                              getProportionScreenHeight(16)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(30)),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    child: kichikButton(
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    height: getProportionScreenHeight(32),
                                    width: getProportionScreenWidth(32),
                                    child: const Center(
                                      child: AutoSizeText("1"),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: kichikButton(
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cuponContainerRangsiz extends StatelessWidget {
  var title;
  var trailing;
  cuponContainerRangsiz({
    Key? key,
    this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(91),
      width: getProportionScreenWidth(371),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(getProportionScreenHeight(12))),
      child: Center(
        child: listileMy(
          title: Text(title),
          trailing: trailing,
        ),
      ),
    );
  }
}

class subtotalText extends StatelessWidget {
  var text1;
  var text2;
  subtotalText({Key? key, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionScreenWidth(20),
          right: getProportionScreenWidth(20),
          top: getProportionScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
                fontSize: getProportionScreenHeight(16),
                color: Constants.greyRang),
          ),
          Text(
            text2,
            style: TextStyle(fontSize: getProportionScreenHeight(16)),
          )
        ],
      ),
    );
  }
}

class textBagMy extends StatelessWidget {
  var text;
  textBagMy({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionScreenWidth(20),
          top: getProportionScreenHeight(20)),
      child: Text(
        text,
        style: TextStyle(fontSize: getProportionScreenHeight(18)),
      ),
    );
  }
}

class DetailsButton extends StatelessWidget {
  var onTap;
  var name;
  DetailsButton({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Constants.yashilRang,
        minimumSize: Size(
          getProportionScreenWidth(151),
          getProportionScreenHeight(37),
        ),
      ),
    );
  }
}

class KerakliContainerKottaro extends StatelessWidget {
  var child;

  KerakliContainerKottaro({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionScreenHeight(112),
        width: getProportionScreenWidth(374),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(12),
          ),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: child);
  }
}

class KerakliContainer extends StatelessWidget {
  var child;
  var rang;

  KerakliContainer({Key? key, required this.child, this.rang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionScreenHeight(91),
        width: getProportionScreenWidth(374),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionScreenHeight(12),
          ),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Center(
          child: child,
        ));
  }
}

class ElevatedOqRang extends StatelessWidget {
  var name;
  var ontap;
  ElevatedOqRang({Key? key, required this.name, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        name,
        style: TextStyle(color: Constants.yashilRang),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: BorderSide(color: Constants.yashilRang),
        shape: const StadiumBorder(),
        primary: Colors.white,
        minimumSize: Size(
          getProportionScreenWidth(374),
          getProportionScreenHeight(52),
        ),
      ),
    );
  }
}

class RowSwitch extends StatelessWidget {
  var text;
  var onchanged;
  var val;
  RowSwitch({Key? key, this.text, this.val, this.onchanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: getProportionScreenHeight(18)),
        ),
        CupertinoSwitch(value: val, onChanged: onchanged)
      ],
    );
  }
}
