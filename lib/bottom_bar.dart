import 'package:flutter/material.dart';

const Color bottomBarColor = Color.fromRGBO(235, 21, 85, 1);

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottomBarColor,
      width: double.infinity,
      height: 80.0,
    );
  }
}
