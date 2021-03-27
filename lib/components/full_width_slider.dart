import 'package:bmi_calculator/components/card_number.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class FullWidthSlider extends StatelessWidget {
  final String title;
  final double currentValue;
  final double minValue;
  final double maxValue;
  final double initialValue;
  final Function onChanged;

  FullWidthSlider({
    @required this.title,
    @required this.minValue,
    @required this.maxValue,
    @required this.initialValue,
    @required this.currentValue,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kBaseLabelStyle,
          ),
          CardNumber(
            number: currentValue.toInt(),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTrackColor: kActiveSliderColor,
                inactiveTrackColor: kInactiveSliderColor,
                thumbColor: Color.fromRGBO(235, 21, 85, 1),
                overlayColor: Color.fromRGBO(49, 20, 47, 0.5)),
            child: Slider(
              value: currentValue,
              min: minValue,
              max: maxValue,
              label: currentValue.round().toString(),
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}
