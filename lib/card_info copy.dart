import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  CardInfo({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
