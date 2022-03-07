import 'package:flutter/foundation.dart';

class MyOrderProvider extends ChangeNotifier {
  
  int tabValue = 0;
  int currentIndex = 0;
  ozgartir(int son) {
    tabValue = son;
    currentIndex = son;
    notifyListeners();
  }
}
