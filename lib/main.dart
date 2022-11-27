import 'package:flutter/material.dart';
import 'package:imc_app/constants/colors_class.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/controllers/slider_controller.dart';
import 'package:imc_app/controllers/weight_controller.dart';
import 'package:imc_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GenreController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeightController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 24,
            color: ColorsClass.mainColors['mainTextColor'],
          ),
        ),
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsClass.mainColors['main'],
            elevation: 5,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
