import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';

class ButtonSelector extends StatefulWidget {
  const ButtonSelector({super.key});

  @override
  State<ButtonSelector> createState() => _ButtonSelectorState();
}

class _ButtonSelectorState extends State<ButtonSelector> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'CALCULAR IMC',
        style: TextStyle(
          fontSize: 26,
          color: ColorsClass.mainColors['containerColor'],
        ),
      ),
    );
  }
}
