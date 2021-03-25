import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  final int number;
  final double size;

  CardNumber({this.number, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: TextStyle(
        color: Colors.white,
        fontSize: size == null ? 70.0 : size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
