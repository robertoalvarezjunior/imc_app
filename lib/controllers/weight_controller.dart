import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class WeightController extends ChangeNotifier {
  double _weight = 50;
  NumberFormat formato = NumberFormat('00.#');
  get weight => formato.format(_weight);

  weightAddTap() {
    _weight += 0.1;
    notifyListeners();
  }

  weightAddLongPress() {
    _weight++;
    notifyListeners();
  }

  weightRemoveTap() {
    _weight -= 0.1;
    notifyListeners();
  }

  weightRemoveLongPress() {
    _weight--;
    notifyListeners();
  }
}
