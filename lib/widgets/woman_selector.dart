import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/genre_controller.dart';

class WomanSelector extends StatelessWidget {
  const WomanSelector({super.key, required this.genre});
  final GenreController genre;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        genre.isgenreSelected();
      },
      child: Container(
        decoration: BoxDecoration(
          color: genre.womanSelect == true
              ? ColorsClass.mainColors['containerColor']
              : Colors.transparent,
          borderRadius: border,
          border: Border.all(
            color: ColorsClass.mainColors['containerBorder']!,
          ),
        ),
        width: size.width * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width * 0.2,
              child: Image.asset(
                'assets/female.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Mulher',
              style: TextStyle(
                color: genre.womanSelect == true
                    ? ColorsClass.mainColors['genreSelectedColor']
                    : ColorsClass.mainColors['mainTextColor'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
