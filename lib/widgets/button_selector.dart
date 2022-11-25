import 'package:flutter/material.dart';

class ButtonSelector extends StatefulWidget {
  const ButtonSelector({super.key});

  @override
  State<ButtonSelector> createState() => _ButtonSelectorState();
}

class _ButtonSelectorState extends State<ButtonSelector> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'CALCULAR IMC',
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
