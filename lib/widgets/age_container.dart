import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/age_controller.dart';

class AgeContainer extends StatelessWidget {
  const AgeContainer({super.key, required this.changenotifierAge});
  final AgeController changenotifierAge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: ColorsClass.mainColors['containerColor'],
        borderRadius: border,
        border: Border.all(color: ColorsClass.mainColors['containerBorder']!),
      ),
      width: size.width * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Idade'),
          Text(
            changenotifierAge.age.toString(),
            style: valueStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsClass.mainColors['main'],
                ),
                height: size.height * 0.06,
                width: size.width * 0.20,
                child: GestureDetector(
                  onTap: () => changenotifierAge.ageRemove(),
                  onLongPress: () => timer = Timer.periodic(
                    const Duration(milliseconds: 100),
                    (timer) => changenotifierAge.ageRemove(),
                  ),
                  onLongPressEnd: (details) => timer?.cancel(),
                  child: Icon(
                    Icons.remove,
                    size: 30,
                    color: ColorsClass.mainColors['textButton'],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsClass.mainColors['main'],
                ),
                height: size.height * 0.06,
                width: size.width * 0.20,
                child: GestureDetector(
                  onTap: () => changenotifierAge.ageAdd(),
                  onLongPress: () => timer = Timer.periodic(
                    const Duration(milliseconds: 100),
                    (timer) => changenotifierAge.ageAdd(),
                  ),
                  onLongPressEnd: (details) => timer?.cancel(),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: ColorsClass.mainColors['textButton'],
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
