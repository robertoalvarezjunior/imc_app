import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CalcImc extends ChangeNotifier {
  double? _result;
  NumberFormat formato = NumberFormat('00.#');
  get result => formato.format(_result);

  calcImc(altura, peso) {
    _result = peso / (altura * altura);
    notifyListeners();
  }
}
