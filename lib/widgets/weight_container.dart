import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/weight_controller.dart';

class WeightContainer extends StatelessWidget {
  const WeightContainer({super.key, required this.changenotifierWeight});
  final WeightController changenotifierWeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, Color> color = ColorsClass.colors(context);
    return Container(
      decoration: BoxDecoration(
        color: color['containerColor'],
        borderRadius: border,
        border: Border.all(color: color['containerBorder']!),
      ),
      width: size.width * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Peso'),
          Text(
            changenotifierWeight.weight.toString(),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: color['textValueColor'],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color['main'],
                ),
                height: size.height * 0.06,
                width: size.width * 0.20,
                child: GestureDetector(
                  onTap: () => changenotifierWeight.weightRemoveTap(),
                  onLongPress: () => timer = Timer.periodic(
                    const Duration(milliseconds: 100),
                    (timer) => changenotifierWeight.weightRemoveLongPress(),
                  ),
                  onLongPressEnd: (details) => timer?.cancel(),
                  child: Icon(
                    Icons.remove,
                    size: 30,
                    color: color['textButton'],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color['main'],
                ),
                height: size.height * 0.06,
                width: size.width * 0.20,
                child: GestureDetector(
                  onTap: () => changenotifierWeight.weightAddTap(),
                  onLongPress: () => timer = Timer.periodic(
                    const Duration(milliseconds: 100),
                    (timer) => changenotifierWeight.weightAddLongPress(),
                  ),
                  onLongPressEnd: (details) => timer?.cancel(),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: color['textButton'],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
