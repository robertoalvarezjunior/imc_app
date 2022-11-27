import 'package:flutter/material.dart';
import 'package:imc_app/controllers/age_controller.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/controllers/slider_controller.dart';
import 'package:imc_app/controllers/weight_controller.dart';
import 'package:imc_app/widgets/age_container.dart';
import 'package:imc_app/widgets/appbar.dart';
import 'package:imc_app/widgets/button_container.dart';
import 'package:imc_app/widgets/height_container.dart';
import 'package:imc_app/widgets/male_container.dart';
import 'package:imc_app/widgets/weight_container.dart';
import 'package:imc_app/widgets/female_container.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: sizeW,
              height: sizeH * 0.25,
              child: Consumer<GenreController>(
                builder: (context, genre, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaleContainer(genre: genre),
                    FemaleContainer(genre: genre),
                  ],
                ),
              ),
            ),
            Consumer<SliderControler>(
              builder: (context, slider, child) =>
                  HeightContainer(slider: slider),
            ),
            SizedBox(
              width: sizeW,
              height: sizeH * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<WeightController>(
                    builder: (context, weight, child) =>
                        WeightContainer(weight: weight),
                  ),
                  Consumer<AgeController>(
                    builder: (context, age, child) => AgeContainer(
                      age: age,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sizeH * 0.1,
              width: double.infinity,
              child: const ButtonContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
