import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 00;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to do more Exercise.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
