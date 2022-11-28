import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/height_controller.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({super.key, required this.changenotifierSlider});
  final HeightControler changenotifierSlider;

  @override
  Widget build(BuildContext context) {
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
            changenotifierSlider.currentSliderValue.round().toString(),
            style: valueStyle,
          ),
          Slider.adaptive(
            activeColor: ColorsClass.mainColors['main'],
            inactiveColor: ColorsClass.mainColors['mainAcent'],
            max: 250,
            divisions: 250,
            label: changenotifierSlider.currentSliderValue.round().toString(),
            value: changenotifierSlider.currentSliderValue,
            onChanged: (value) => changenotifierSlider.sliderState(value),
          )
        ],
      ),
    );
  }
}
