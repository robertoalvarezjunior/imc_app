import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';

class ColorsClass {
  static Map<String, Color> colors(BuildContext context) {
    return {
      'containerColor': color(context).primaryContainer,
      'containerBorder': color(context).primary,
      'main': color(context).tertiary,
      'mainAcent': color(context).tertiaryContainer,
      'textValueColor': color(context).background,
      'mainTextColor': color(context).secondaryContainer,
      'genreSelectedColor': color(context).background,
      'textButton': color(context).secondaryContainer,
    };
  }
}
