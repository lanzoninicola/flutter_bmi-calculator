import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  final int number;

  CardNumber({this.number});

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: TextStyle(
        color: Colors.white,
        fontSize: 70.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
