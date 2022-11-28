import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/controllers/height_controller.dart';
import 'package:imc_app/controllers/weight_controller.dart';
import 'package:imc_app/widgets/dialog_result.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.altura,
    required this.peso,
  });
  final HeightControler altura;
  final WeightController peso;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => DialogResult(
            altura: altura.currentSliderValue.toString(),
            peso: peso.weight.toString(),
          ),
        );
      },
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
