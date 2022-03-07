import 'package:flutter/material.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/core/widgets/widgets.dart';
import 'package:organico_ui/pages/order_ongoing.dart';
import 'package:organico_ui/provider/my_order_provider.dart';
import 'package:provider/provider.dart';

import 'order_history.dart';

class MyOrdersPage extends StatelessWidget {
  MyOrdersPage({
    Key? key,
  }) : super(key: key);
  List lst = [const OngoingWidget(), const HistoryWidget()];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
                  icon: const Icon(Icons.arrow_back_ios)),
              text: "My orders",
            ),
            DefaultTabController(
              initialIndex: context.watch<MyOrderProvider>().currentIndex,
              length: 2,
              child: TabBar(
                onTap: (val) {
                  context.read<MyOrderProvider>().ozgartir(val);
                },
                indicatorColor: Constants.yashilRang,
                isScrollable: false,
                labelColor: Constants.yashilRang,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "History",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(30)),
              child: lst[context.watch<MyOrderProvider>().currentIndex],
            )
          ],
        ),
      )),
    );
  }
}
