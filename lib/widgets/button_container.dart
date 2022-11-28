import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/controllers/age_controller.dart';
import 'package:imc_app/controllers/calc_imc.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/controllers/height_controller.dart';
import 'package:imc_app/controllers/weight_controller.dart';
import 'package:imc_app/widgets/dialog_result.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.changenotifierHeight,
    required this.changenotifierWeight,
    required this.changenotifierIMC,
    required this.changenotifierAge,
    required this.changenotifierGenre,
  });
  final HeightControler changenotifierHeight;
  final WeightController changenotifierWeight;
  final CalcImc changenotifierIMC;
  final AgeController changenotifierAge;
  final GenreController changenotifierGenre;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        changenotifierIMC.calcImc(
            double.parse(changenotifierHeight.currentSliderValue),
            double.parse(changenotifierWeight.weight));
        showDialog(
          context: context,
          builder: (context) => DialogResult(
            changenotifierGenre: changenotifierGenre,
            changenotifierAge: changenotifierAge.age,
            altura: double.parse(changenotifierHeight.currentSliderValue),
            peso: double.parse(changenotifierWeight.weight),
            changenotifierIMC: changenotifierIMC,
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
