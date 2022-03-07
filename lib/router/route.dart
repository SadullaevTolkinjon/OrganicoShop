import 'package:flutter/material.dart';
import 'package:organico_ui/pages/cancel_order_form.dart';
import 'package:organico_ui/pages/category_page.dart';
import 'package:organico_ui/pages/change_number_page.dart';
import 'package:organico_ui/pages/change_password.dart';
import 'package:organico_ui/pages/cupon_page.dart';
import 'package:organico_ui/pages/detail_page.dart';
import 'package:organico_ui/pages/edit_profile_page.dart';
import 'package:organico_ui/pages/explore_page.dart';
import 'package:organico_ui/pages/first_page.dart';
import 'package:organico_ui/pages/home_page.dart';
import 'package:organico_ui/pages/my_address_page.dart';
import 'package:organico_ui/pages/my_bag_page.dart';
import 'package:organico_ui/pages/my_cart_page.dart';
import 'package:organico_ui/pages/my_orders_page.dart';
import 'package:organico_ui/pages/my_wishlist.dart';
import 'package:organico_ui/pages/nitification_page.dart';
import 'package:organico_ui/pages/notification_settings.dart';
import 'package:organico_ui/pages/on_delivery_page.dart';
import 'package:organico_ui/pages/order_status_completed.dart';
import 'package:organico_ui/pages/order_status_details.dart';
import 'package:organico_ui/pages/order_status_recived.dart';
import 'package:organico_ui/pages/payment_method_page.dart';
import 'package:organico_ui/pages/sign_in/forgot_pass.dart';
import 'package:organico_ui/pages/sign_in/reset_pass.dart';
import 'package:organico_ui/pages/sign_in/sign_inn.dart';
import 'package:organico_ui/pages/sign_in/sign_up.dart';
import 'package:organico_ui/pages/sign_in/sms_code.dart';

class GenerateRouterr {
  static routeGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => FirstPage());
      case "/signin":
        return MaterialPageRoute(builder: (context) => SignInPage());
      case "/signup":
        return MaterialPageRoute(builder: (context) => SignUp_Page());
      case "/forgotpass":
        return MaterialPageRoute(builder: (context) => ForgotPassWord());
      case "/sms":
        return MaterialPageRoute(builder: (context) => SmsCode(nomer: args));
      case "/reset":
        return MaterialPageRoute(builder: (context) => ResetPasswordPage());
      case "/home":
        return MaterialPageRoute(builder: (context) => HomePage());
      case "/detail":
        return MaterialPageRoute(builder: (context) => const DetailPage());
      case "/wishlist":
        return MaterialPageRoute(builder: (context) => const MyWishlistPage());
      case "/category":
        return MaterialPageRoute(builder: (context) => const CategoryPage());
      case "/cupon":
        return MaterialPageRoute(builder: (context) => const CuponPage());
      case "/explore":
        return MaterialPageRoute(builder: (context) => const ExplorePage());
      case "/mycart":
        return MaterialPageRoute(builder: (context) => const MyCartPage());
      case "/bag":
        return MaterialPageRoute(builder: (context) => const MyBag());
      case "/order":
        return MaterialPageRoute(builder: (context) => MyOrdersPage());
      case "/orderstatus_recived":
        return MaterialPageRoute(builder: (context) => const OrderStatusPage());
      case "/orderstatus_completed":
        return MaterialPageRoute(
            builder: (context) => const OrderStatusCompletedPage());
      case "/orderstatus_details":
        return MaterialPageRoute(
            builder: (context) => const OrderStatusDetails());
      case "/ondelivery":
        return MaterialPageRoute(builder: (context) => const OnDeliveryPage());
      case "/cancel":
        return MaterialPageRoute(builder: (context) => const CancelPage());
      case "/notification":
        return MaterialPageRoute(
            builder: (context) => const NotificationPage());
      case "/notification_settings":
        return MaterialPageRoute(
            builder: (context) => const NotificationSettingsPage());
      case "/edit_profile":
        return MaterialPageRoute(builder: (context) => EditProfilePage());
      case "/change_number":
        return MaterialPageRoute(builder: (context) => ChangeNumberPage());
      case "/change_password":
        return MaterialPageRoute(builder: (context) => ChangePasswordPage());
          case "/my_address":
        return MaterialPageRoute(builder: (context) => MyAddressPage());
           case "/payment":
        return MaterialPageRoute(builder: (context) => PaymentMethodPage());
    }
  }
}
