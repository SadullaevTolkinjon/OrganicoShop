import 'package:flutter/material.dart';
import 'package:organico_ui/core/widgets/widgets.dart';

class OnDeliveryPage extends StatelessWidget {
  const OnDeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                text: "On Delivery",
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
