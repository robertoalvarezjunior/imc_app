import 'package:flutter/material.dart';
import 'package:imc_app/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: border,
                    child: SizedBox(
                      height: double.infinity,
                      width: size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: size.width * 0.2,
                            child: Image.asset(
                              'assets/male.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Text('Homem'),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: size.width * 0.45,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: border,
              child: Container(
                color: Colors.green,
                height: size.height * 0.25,
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: border,
                    child: Container(
                      height: double.infinity,
                      width: size.width * 0.45,
                      color: Colors.yellow,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: size.width * 0.45,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'CALCULAR IMC',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
