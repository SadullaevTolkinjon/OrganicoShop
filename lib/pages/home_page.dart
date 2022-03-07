import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organico_ui/constant/const.dart';
import 'package:organico_ui/core/size_config/size_config.dart';
import 'package:organico_ui/pages/asosiy_home_page.dart';
import 'package:organico_ui/pages/explore_page.dart';
import 'package:organico_ui/pages/my_cart_page.dart';
import 'package:organico_ui/pages/profile_page.dart';
import 'package:organico_ui/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List pages = [
    AsosiyPage(),
    ExplorePage(),
    MyCartPage(),
    ProfilePAge()

  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: pages[context.watch<HomePageProvider>().currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Constants.yashilRang,
        unselectedItemColor: Constants.darkGrey,
        showUnselectedLabels: true,
        onTap: (val) {
          context.read<HomePageProvider>().pageOzgartir(val);
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home_icon.svg",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/search_icon.svg"),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/cart_icon.svg"),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/profile_icon.svg"),
              label: "Profile"),
        ],
      ),
    );
  }
}
