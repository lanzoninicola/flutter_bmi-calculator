import 'package:flutter/material.dart';

const Color activeBackgroundColor = Color.fromRGBO(23, 31, 51, 1);
const Color baseBackgroundColor =
    Colors.amber; //Color.fromRGBO(23, 31, 51, 0.6);
const Color activeBorderColor = Color.fromRGBO(235, 21, 85, 1);
const Color baseBorderColor = Color.fromRGBO(23, 31, 51, 0.6);

class CardInfo extends StatelessWidget {
  final bool isActive;
  final Widget cardChild;
  final Function onTap;
  final String cardLabel;
  CardInfo({this.isActive, this.cardChild, this.onTap, this.cardLabel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: isActive == true ? activeBackgroundColor : baseBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: isActive == true
              ? Border.all(
                  color: activeBorderColor,
                  width: 2.0,
                )
              : null,
        ),
      ),
    );
  }
}
