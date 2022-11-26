import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/genre_controller.dart';

class ManSelector extends StatelessWidget {
  const ManSelector({
    super.key,
    required this.changenotifier1,
  });
  final GenreController changenotifier1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        changenotifier1.isgenreSelected();
      },
      child: Container(
        decoration: BoxDecoration(
          color: changenotifier1.manSelect == true
              ? mainColor
              : Colors.transparent,
          borderRadius: border,
          border: Border.all(color: borderColor),
        ),
        height: double.infinity,
        width: size.width * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width * 0.2,
              child: Image.asset(
                'assets/male.png',
                fit: BoxFit.cover,
              ),
            ),
            const Text('Homem'),
          ],
        ),
      ),
    );
  }
}
