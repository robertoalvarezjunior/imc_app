import 'package:flutter/material.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/widgets/age_selector.dart';
import 'package:imc_app/widgets/button_selector.dart';
import 'package:imc_app/widgets/height_selector.dart';
import 'package:imc_app/widgets/man_selector.dart';
import 'package:imc_app/widgets/weight_selector.dart';
import 'package:imc_app/widgets/woman_selector.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GenreController>(
      builder: (context, changenotifier1, child) => Scaffold(
        appBar: AppBar(
          title: const Text('IMC'),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ManSelector(changenotifier1: changenotifier1),
                    WomanSelector(changenotifier1: changenotifier1),
                  ],
                ),
              ),
              const HeightSelector(),
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    WeightSelector(),
                    AgeSelector(),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: double.infinity,
                child: const ButtonSelector(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
