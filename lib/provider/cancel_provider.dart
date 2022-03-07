import 'package:flutter/foundation.dart';

class CancelLationProvider extends ChangeNotifier {
  bool qiymat = false;
  ozgartir() {
    qiymat = !qiymat;
    notifyListeners();
  }
}
