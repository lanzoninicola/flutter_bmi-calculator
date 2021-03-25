import 'package:flutter/material.dart';

const Color bottomBarColor = Color.fromRGBO(235, 21, 85, 1);

class BottomBar extends StatelessWidget {
  final bool isActive;
  final String text;

  BottomBar({this.isActive, @required this.text});

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
            text,
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
