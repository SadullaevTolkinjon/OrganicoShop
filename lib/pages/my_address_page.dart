import 'package:flutter/material.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({Key? key}) : super(key: key);

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
              text: "My Addres",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenHeight(20),
                  top: getProportionScreenHeight(20)),
              child: KerakliContainer(
                child: ListTile(
                  title: const Text("Home"),
                  subtitle: Text(
                    "3517 W. Gray St. Utica, Pennsylvania 57867",
                    style: TextStyle(fontSize: getProportionScreenHeight(13)),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(15),
              ),
              child: KerakliContainer(
                child: ListTile(
                  title: const Text("Work"),
                  subtitle: Text(
                    "2715 Ash Dr. San Jose, South Dakota 83475",
                    style: TextStyle(fontSize: getProportionScreenHeight(13)),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
