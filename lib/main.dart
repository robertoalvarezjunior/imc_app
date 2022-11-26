import 'package:flutter/material.dart';
import 'package:imc_app/controllers/genre_controller.dart';
import 'package:imc_app/controllers/slider_controller.dart';
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
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            elevation: 0,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
