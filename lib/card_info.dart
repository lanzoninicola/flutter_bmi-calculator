import 'package:flutter/material.dart';

const Color activeBackgroundColor = Color.fromRGBO(23, 31, 51, 1);
const Color baseBackgroundColor = Color.fromRGBO(23, 31, 51, 0.6);
const Color activeBorderColor = Color.fromRGBO(235, 21, 85, 1);
const Color baseBorderColor = Color.fromRGBO(23, 31, 51, 0.6);

class CardInfo extends StatelessWidget {
  final bool isActive;
  final Widget cardChild;
  CardInfo({@required this.isActive, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: isActive == true ? activeBackgroundColor : baseBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: isActive == true
            ? Border.all(
                color: activeBorderColor,
                width: 5.0,
              )
            : null,
      ),
    );
  }
}
