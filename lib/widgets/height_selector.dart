import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/slider_controller.dart';
import 'package:provider/provider.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key, required this.slider});
  final SliderControler slider;

  @override
  Widget build(BuildContext context) {
    SliderControler sliderValue = context.watch<SliderControler>();
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: ColorsClass.mainColors['containerColor'],
        borderRadius: border,
        border: Border.all(color: ColorsClass.mainColors['containerBorder']!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Altura'),
          Text(
            sliderValue.currentSliderValue.round().toString(),
            style: valueStyle,
          ),
          Slider.adaptive(
            activeColor: ColorsClass.mainColors['main'],
            inactiveColor: ColorsClass.mainColors['mainAcent'],
            max: 250,
            divisions: 250,
            label: sliderValue.currentSliderValue.round().toString(),
            value: sliderValue.currentSliderValue,
            onChanged: (value) => slider.sliderState(value),
          )
        ],
      ),
    );
  }
}
