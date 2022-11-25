import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key});

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: border,
      child: Container(
        height: double.infinity,
        width: size.width * 0.45,
        color: Colors.yellow,
      ),
    );
  }
}
