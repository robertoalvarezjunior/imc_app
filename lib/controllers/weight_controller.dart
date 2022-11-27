import 'package:flutter/cupertino.dart';

class WeightController with ChangeNotifier {
  int _weight = 50;

  get weight => _weight;

  weightAdd() {
    _weight++;
    notifyListeners();
  }

  weightRemove() {
    _weight--;
    notifyListeners();
  }
}
