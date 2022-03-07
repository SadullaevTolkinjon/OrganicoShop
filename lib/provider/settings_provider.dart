import 'package:flutter/foundation.dart';

class SettingsProvider extends ChangeNotifier {
  bool inAppVal = false;
  bool newPromoVal = false;
  bool tipsVal = false;
  bool updateVal = false;
  ozgartirQiymatni() {
    inAppVal = !inAppVal;

    notifyListeners();
  }

  ozgartirPromo() {
    newPromoVal = !newPromoVal;
    notifyListeners();
  }

  ozgartirTips() {
    tipsVal = !tipsVal;
    notifyListeners();
  }

  ozgartirUpdate() {
    updateVal = !updateVal;
    notifyListeners();
  }
}
