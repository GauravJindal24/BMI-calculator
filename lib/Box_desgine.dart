import 'package:flutter/material.dart';
import 'Constants.dart';

class Boxdesgine extends StatelessWidget {
  final IconData? icon;
  final String label;
  Boxdesgine({this.icon, this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: textlebelstyle),
      ],
    );
  }
}
