import 'package:flutter/material.dart';

const Color bottomBarColor = Color.fromRGBO(235, 21, 85, 1);

class BottomBar extends StatelessWidget {
  final bool isActive;

  BottomBar({this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
      },
      child: Container(
        color: bottomBarColor,
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            'CALCULATE YOUR BMI',
            style: TextStyle(
              color: isActive == true ? Colors.white : Colors.white38,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
