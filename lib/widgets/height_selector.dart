import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/slider_controller.dart';
import 'package:provider/provider.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key, required this.changenotifier2});
  final SliderControler changenotifier2;

  @override
  Widget build(BuildContext context) {
    SliderControler sliderValue = context.watch<SliderControler>();
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: border,
        border: Border.all(color: borderColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Altura'),
          Text(
            sliderValue.currentSliderValue.round().toString(),
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            max: 250,
            divisions: 250,
            label: sliderValue.currentSliderValue.round().toString(),
            value: sliderValue.currentSliderValue,
            onChanged: (value) => changenotifier2.sliderState(value),
          )
        ],
      ),
    );
  }
}
