import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';

class DialogResult extends StatelessWidget {
  const DialogResult({
    super.key,
    required this.altura,
    required this.peso,
  });
  final String altura;
  final String peso;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: border,
      ),
      elevation: 5,
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          Text('Sua Altura é: $altura'),
          Text('Seu Peso é: $peso'),
          const Text('Seu IMC é: '),
        ],
      ),
    );
  }
}
