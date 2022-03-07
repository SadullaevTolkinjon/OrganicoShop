import 'package:flutter/foundation.dart';

class HomePageProvider extends ChangeNotifier {
  String popupvalue = "sergeli";
  int currentIndex = 0;
  ozgartirish(var data) {
    popupvalue = data;
    notifyListeners();
  }

  pageOzgartir(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
