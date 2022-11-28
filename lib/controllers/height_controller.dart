import 'package:flutter/material.dart';

class HeightControler with ChangeNotifier {
  double _currentSliderValue = 50;
  get currentSliderValue => _currentSliderValue;
  sliderState(value) {
    _currentSliderValue = value;
    notifyListeners();
  }
}
