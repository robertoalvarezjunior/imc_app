import 'package:flutter/material.dart';
import 'package:imc_app/controllers/age_controller.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/controllers/height_controller.dart';
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
    return Consumer4<GenreController, HeightControler, WeightController,
        AgeController>(
      builder: (
        context,
        changenotifierGenre,
        changenotifierHeight,
        changenotifierWeight,
        changenotifierAge,
        child,
      ) =>
          Scaffold(
        appBar: appBar,
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: sizeW,
                height: sizeH * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaleContainer(changenotifierGenre: changenotifierGenre),
                    FemaleContainer(changenotifierGenre: changenotifierGenre),
                  ],
                ),
              ),
              HeightContainer(changenotifierSlider: changenotifierHeight),
              SizedBox(
                width: sizeW,
                height: sizeH * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeightContainer(changenotifierWeight: changenotifierWeight),
                    AgeContainer(
                      changenotifierAge: changenotifierAge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeH * 0.1,
                width: double.infinity,
                child: ButtonContainer(
                  peso: changenotifierWeight,
                  altura: changenotifierHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
