import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/genre_controller.dart';

class MaleContainer extends StatelessWidget {
  const MaleContainer({
    super.key,
    required this.changenotifierGenre,
  });
  final GenreController changenotifierGenre;

  @override
  Widget build(BuildContext context) {
    Map<String, Color> color = ColorsClass.colors(context);
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        changenotifierGenre.isgenreSelected();
      },
      child: Container(
        decoration: BoxDecoration(
          color: changenotifierGenre.manSelect == true
              ? color['containerColor']
              : Colors.transparent,
          borderRadius: border,
          border: Border.all(color: color['containerBorder']!),
        ),
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
            Text(
              'Homem',
              style: TextStyle(
                color: changenotifierGenre.manSelect == true
                    ? color['genreSelectedColor']
                    : color['mainTextColor'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
