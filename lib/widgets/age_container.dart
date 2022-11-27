import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/age_controller.dart';
import 'package:provider/provider.dart';

class AgeContainer extends StatelessWidget {
  const AgeContainer({super.key, required this.age});
  final AgeController age;

  @override
  Widget build(BuildContext context) {
    AgeController ageValue = context.watch<AgeController>();
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
          const Text('Peso'),
          Text(
            ageValue.age.toString(),
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
                child: InkWell(
                  onTap: () => age.ageRemove(),
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
                child: InkWell(
                  onTap: () => age.ageAdd(),
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
