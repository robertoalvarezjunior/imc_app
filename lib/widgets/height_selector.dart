import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: border,
      child: Container(
        color: Colors.green,
        height: size.height * 0.25,
      ),
    );
  }
}
