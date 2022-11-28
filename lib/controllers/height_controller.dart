import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeightControler with ChangeNotifier {
  double _currentSliderValue = 1.5;
  NumberFormat formato = NumberFormat('0.00');
  get currentSliderValue => formato.format(_currentSliderValue);
  sliderState(value) {
    _currentSliderValue = value;
    notifyListeners();
  }
}
