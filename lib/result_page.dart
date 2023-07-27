import 'package:bmi_calculator/Box_used.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: kYourResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Boxused(
              colour: activecardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kBodytextstyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultnumberstyle,
                  ),
                  Text(
                    interpretation,
                    style: kDialogueStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: 60.0,
              color: bottomcolorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
