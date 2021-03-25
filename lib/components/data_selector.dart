import 'package:bmi_calculator/components/card_number.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../enums/operations.dart';

class DataSelector extends StatefulWidget {
  final double initialValue;
  final String description;
  final double minValue;
  final double maxValue;

  DataSelector({
    @required this.description,
    this.initialValue = 0,
    this.minValue = 0,
    this.maxValue = 999999999,
  });

  @override
  _DataSelectorState createState() => _DataSelectorState(
        description: description,
        initialValue: initialValue,
        minValue: minValue,
        maxValue: maxValue,
      );
}

class _DataSelectorState extends State<DataSelector> {
  final double initialValue;
  final String description;
  final double minValue;
  final double maxValue;

  _DataSelectorState({
    @required this.description,
    this.initialValue = 0,
    this.minValue = 0,
    this.maxValue = 999999999,
  });

  double _currentValue = 0.0;

  void decreaseValue() {
    setState(() {
      double nextCurrentValue;
      nextCurrentValue = _currentValue;
      nextCurrentValue--;
      nextCurrentValue = nextCurrentValue < 0 ? 0 : nextCurrentValue;
      _currentValue = nextCurrentValue;
    });
  }

  void increaseValue() {
    setState(() {
      _currentValue++;
    });
  }

  void changeData(Operations operation) {
    if (operation == Operations.minus) {
      decreaseValue();
    }

    if (operation == Operations.plus) {
      increaseValue();
    }
  }

  @override
  void initState() {
    _currentValue = initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            description.toString(),
            style: kBaseLabelStyle,
          ),
          CardNumber(
            number: _currentValue.toInt(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                onPressed: () => changeData(Operations.plus),
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              RoundedButton(
                onPressed: () => changeData(Operations.minus),
                icon: FaIcon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

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
