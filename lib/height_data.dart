import 'package:bmi_calculator/card_number.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class HeightData extends StatefulWidget {
  @override
  _HeightDataState createState() => _HeightDataState();
}

class _HeightDataState extends State<HeightData> {
  double _currentSliderValue = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: kBaseLabelStyle,
          ),
          CardNumber(
            number: _currentSliderValue.toInt(),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTrackColor: kActiveSliderColor,
                inactiveTrackColor: kInactiveSliderColor,
                thumbColor: Color.fromRGBO(235, 21, 85, 1),
                overlayColor: Color.fromRGBO(49, 20, 47, 0.5)),
            child: Slider(
              value: _currentSliderValue,
              min: 130,
              max: 220,
              // divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
