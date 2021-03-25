import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final Widget icon;
  final String text;
  final bool isActive;

  IconText({@required this.icon, this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    print(theme.primaryColor);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        Text(
          text,
          style: isActive ? kActiveLabelStyle : kBaseLabelStyle,
        ),
      ],
    );
  }
}
