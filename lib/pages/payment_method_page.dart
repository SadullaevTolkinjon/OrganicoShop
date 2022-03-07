import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

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
              text: "Payment Method",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(40)),
              child: KerakliContainer(
                  child: ListTile(
                leading: SvgPicture.asset('assets/images/credit.svg'),
                title: const Text("Credit Card"),
                trailing: const Icon(Icons.arrow_forward_ios),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(30)),
              child: KerakliContainer(
                child: ListTile(
                  leading: SvgPicture.asset("assets/images/paypal.svg"),
                  title: const Text("Paypal"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(424)),
              child: ElevatedSign(
                name: "Add payment",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
