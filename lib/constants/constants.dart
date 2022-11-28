import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';

BorderRadiusGeometry border = BorderRadius.circular(12);

TextStyle valueStyle(double size) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: ColorsClass.mainColors['textValueColor'],
    );

Timer? timer;

List<String> abaixoPeso = [
  'abaixo de 18,5',
  'abaixo do peso',
];
List<String> pesoIdelal = [
  'entre 18,6 e 24,9',
  'Peso Ideal',
];
List<String> acimaPeso = [
  'entre 25,0 e 29,9',
  'Levemente acima do peso',
];
List<String> obesidade1 = [
  'entre 30,0 e 34,9',
  'Obesidade grau I',
];
List<String> obesidade2 = [
  'entre 35,0 e 39,9',
  'Obesidade grau II',
];
List<String> obesidade3 = [
  'acima de de 40',
  'Obesidade grau III',
];
