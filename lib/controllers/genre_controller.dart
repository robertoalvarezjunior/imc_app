import 'package:flutter/material.dart';

class GenreController with ChangeNotifier {
  bool manSelect;
  bool womanSelect;
  GenreController({this.manSelect = false, this.womanSelect = true});

  isgenreSelected() {
    manSelect = !manSelect;
    womanSelect = !womanSelect;
    notifyListeners();
  }
}
