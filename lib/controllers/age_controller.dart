import 'package:flutter/cupertino.dart';

class AgeController with ChangeNotifier {
  int _age = 30;
  get age => _age;

  ageAdd() {
    _age++;
    notifyListeners();
  }

  ageRemove() {
    _age--;
    notifyListeners();
  }
}
