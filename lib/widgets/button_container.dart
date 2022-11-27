import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';

class ButtonContainer extends StatefulWidget {
  const ButtonContainer({super.key});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
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
