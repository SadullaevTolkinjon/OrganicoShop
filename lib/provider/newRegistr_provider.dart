import 'package:flutter/foundation.dart';

class NewRegistrProvider extends ChangeNotifier {
  bool checkboxVal = false;
  ozgartirVal() {
    checkboxVal = !checkboxVal;

    notifyListeners();
  }
}
