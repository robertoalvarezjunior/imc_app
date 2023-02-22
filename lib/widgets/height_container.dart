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
    Map<String, Color> color = ColorsClass.colors(context);
    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: color['containerColor'],
        borderRadius: border,
        border: Border.all(color: color['containerBorder']!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Altura'),
          Text(
            changenotifierSlider.currentSliderValue
                .toString()
                .replaceAll('.', ','),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: color['textValueColor'],
            ),
          ),
          Slider.adaptive(
            activeColor: color['main'],
            inactiveColor: color['mainAcent'],
            max: 2.5,
            divisions: 250,
            label: changenotifierSlider.currentSliderValue.toString(),
            value: double.parse(changenotifierSlider.currentSliderValue),
            onChanged: (value) => changenotifierSlider.sliderState(value),
          ),
        ],
      ),
    );
  }
}
