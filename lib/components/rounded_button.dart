import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({@required this.icon, @required this.onPressed});

  final FaIcon icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color.fromRGBO(28, 31, 50, 1),
      constraints: BoxConstraints(minWidth: 60, minHeight: 60),
      shape: CircleBorder(),
      child: icon,
    );
  }
}
