import 'package:auto_size_text/auto_size_text.dart';
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
    Map<String, Color> color = ColorsClass.colors(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: border,
      ),
      backgroundColor: color['containerColor'],
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              'Seu Gênero é: ${changenotifierGenre.manSelect ? 'Homem' : 'Mulher'}',
              minFontSize: 18,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color['textValueColor'],
              ),
            ),
            AutoSizeText(
              'Sua Idade é: ${changenotifierAge.toString()}',
              minFontSize: 18,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color['textValueColor'],
              ),
            ),
            AutoSizeText(
              'Sua Altura é: ${altura.toString().replaceAll('.', ',')}',
              minFontSize: 18,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color['textValueColor'],
              ),
            ),
            AutoSizeText(
              'Seu Peso é: ${peso.toString()}',
              minFontSize: 18,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color['textValueColor'],
              ),
            ),
            AutoSizeText(
              'Seu IMC é: ${changenotifierIMC.result.toString().replaceAll('.', ',')}',
              minFontSize: 18,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color['textValueColor'],
              ),
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
                      AutoSizeText(
                        'IMC',
                        style: TextStyle(
                          color: color['main'],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      AutoSizeText(
                        'Classificação',
                        style: TextStyle(
                          color: color['main'],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color:
                          valueRes <= (18.5) ? color['containerBorder'] : null,
                    ),
                    children: abaixoPeso
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes <= (18.5)
                                  ? color['genreSelectedColor']
                                  : null,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: valueRes >= (18.6) && valueRes <= (24.9)
                          ? color['containerBorder']
                          : null,
                    ),
                    children: pesoIdelal
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes >= (18.6) && valueRes <= (24.9)
                                  ? color['genreSelectedColor']
                                  : null,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: valueRes >= (25.0) && valueRes <= (29.9)
                          ? color['containerBorder']
                          : null,
                    ),
                    children: acimaPeso
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes >= (25.0) && valueRes <= (29.9)
                                  ? color['genreSelectedColor']
                                  : null,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: valueRes >= (30.0) && valueRes <= (34.9)
                          ? color['containerBorder']
                          : null,
                    ),
                    children: obesidade1
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes >= (30.0) && valueRes <= (34.9)
                                  ? color['genreSelectedColor']
                                  : null,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: valueRes >= (35.0) && valueRes <= (39.9)
                          ? color['containerBorder']
                          : null,
                    ),
                    children: obesidade2
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes >= (35.0) && valueRes <= (39.9)
                                  ? color['genreSelectedColor']
                                  : null,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: valueRes >= (40) ? color['containerBorder'] : null,
                    ),
                    children: obesidade3
                        .map(
                          (e) => AutoSizeText(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: valueRes >= (40)
                                  ? color['genreSelectedColor']
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
      ),
    );
  }
}
