import 'InputPage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Box_desgine.dart';

void main() {
  runApp(
    BMI_calculator(),
  );
}

class BMI_calculator extends StatelessWidget {
  const BMI_calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
