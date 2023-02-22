import 'dart:async';

import 'package:flutter/material.dart';

BorderRadiusGeometry border = BorderRadius.circular(12);

ColorScheme color(BuildContext context) {
  return Theme.of(context).colorScheme;
}

Timer? timer;

List<String> abaixoPeso = [
  'Abaixo de 18,5',
  'Abaixo do peso',
];
List<String> pesoIdelal = [
  'Entre 18,6 e 24,9',
  'Peso Ideal',
];
List<String> acimaPeso = [
  'Entre 25,0 e 29,9',
  'Levemente acima do peso',
];
List<String> obesidade1 = [
  'Entre 30,0 e 34,9',
  'Obesidade grau I',
];
List<String> obesidade2 = [
  'Entre 35,0 e 39,9',
  'Obesidade grau II',
];
List<String> obesidade3 = [
  'Acima de de 40',
  'Obesidade grau III',
];
