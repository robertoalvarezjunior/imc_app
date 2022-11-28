import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/constants/constants.dart';
import 'package:imc_app/controllers/calc_imc.dart';
import 'package:imc_app/controllers/genre_controller.dart';

class DialogResult extends StatelessWidget {
  const DialogResult({
    super.key,
    required this.altura,
    required this.peso,
    required this.changenotifierIMC,
    required this.changenotifierGenre,
    required this.changenotifierAge,
  });
  final double altura;
  final double peso;
  final CalcImc changenotifierIMC;
  final GenreController changenotifierGenre;
  final int changenotifierAge;

  @override
  Widget build(BuildContext context) {
    var valueRes = double.parse(changenotifierIMC.result);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: border,
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Seu Gênero é: ${changenotifierGenre.manSelect ? 'Homem' : 'Mulher'}',
            style: valueStyle(26),
          ),
          Text(
            'Sua Idade é: ${changenotifierAge.toString()}',
            style: valueStyle(26),
          ),
          Text(
            'Sua Altura é: ${altura.toString().replaceAll('.', ',')}',
            style: valueStyle(26),
          ),
          Text(
            'Seu Peso é: ${peso.toString()}',
            style: valueStyle(26),
          ),
          Text(
            'Seu IMC é: ${changenotifierIMC.result.toString().replaceAll('.', ',')}',
            style: valueStyle(26),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Table(
              border: TableBorder.all(
                borderRadius: BorderRadius.circular(12),
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Text(
                      'IMC',
                      style: TextStyle(
                        color: ColorsClass.mainColors['main'],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Classificação',
                      style: TextStyle(
                        color: ColorsClass.mainColors['main'],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes <= (18.5)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: abaixoPeso
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes <= (18.5)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes >= (18.6) && valueRes <= (24.9)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: pesoIdelal
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes >= (18.6) && valueRes <= (24.9)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes >= (25.0) && valueRes <= (29.9)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: acimaPeso
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes >= (25.0) && valueRes <= (29.9)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes >= (30.0) && valueRes <= (34.9)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: obesidade1
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes >= (30.0) && valueRes <= (34.9)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes >= (35.0) && valueRes <= (39.9)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: obesidade2
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes >= (35.0) && valueRes <= (39.9)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: valueRes >= (40)
                        ? ColorsClass.mainColors['containerColor']
                        : null,
                  ),
                  children: obesidade3
                      .map(
                        (e) => Text(
                          e,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: valueRes >= (40)
                                ? ColorsClass.mainColors['genreSelectedColor']
                                : null,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
