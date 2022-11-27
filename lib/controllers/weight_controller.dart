import 'package:flutter/cupertino.dart';

class WeightController with ChangeNotifier {
  final int _weight = 50;

  get weight => _weight;
}
