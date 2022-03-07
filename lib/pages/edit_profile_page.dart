import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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
              text: "Edit Profile",
            ),
            SizedBox(
              height: getProportionScreenHeight(150),
              width: double.infinity,
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: getProportionScreenHeight(90),
                      backgroundColor: Colors.amber,
                    ),
                    Positioned(
                      left: getProportionScreenWidth(110),
                      top: getProportionScreenHeight(85),
                      child: IconButton(
                        iconSize: getProportionScreenHeight(50),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/photo.svg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            textBagMy(text: "Name"),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(10)),
              child: TextFieldMy(hintText: "Name", controller: _nameController),
            ),
            textBagMy(text: "Phone"),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(10)),
              child: TextFieldMy(
                hintText: "Phone number",
                controller: _phoneController,
              ),
            ),
            textBagMy(text: "Adress"),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(5)),
              child: Container(
                height: getProportionScreenHeight(127),
                width: getProportionScreenWidth(374),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getProportionScreenHeight(10),
                    ),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(10)),
                  child: const Text(
                    "3517 W. Gray St. Utica Pennsylvania ",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(100)),
              child: ElevatedSign(
                onTap: () {
                  Navigator.pushNamed(context, "/change_number");
                },
                name: "Save",
              ),
            )
          ],
        ),
      ),
    );
  }
}
