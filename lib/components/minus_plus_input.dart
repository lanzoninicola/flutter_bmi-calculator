import 'package:bmi_calculator/components/card_number.dart';
import 'package:bmi_calculator/components/rounded_button.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MinusPlusInput extends StatelessWidget {
  final int initialValue;
  final String label;
  final int currentValue;
  final int minValue;
  final int maxValue;
  final Function increaseData;
  final Function decreaseData;

  MinusPlusInput(
      {@required this.label,
      this.initialValue = 0,
      this.minValue = 0,
      this.maxValue = 999999999,
      this.currentValue,
      this.increaseData,
      this.decreaseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label.toString(),
            style: kBaseLabelStyle,
          ),
          CardNumber(
            number: currentValue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                onPressed: increaseData,
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              RoundedButton(
                onPressed: decreaseData,
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
