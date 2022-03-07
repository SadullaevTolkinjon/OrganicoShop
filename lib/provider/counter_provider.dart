import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  var sanoq = 0;
  oshir() {
    sanoq += 1;
    notifyListeners();
  }

  kamaytir() {
    sanoq -= 1;
    if (sanoq <= 0) {
      sanoq = 0;
    }
    notifyListeners();
  }
}
