import 'package:bmi_calculator/components/card_number.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class FullWidthSlider extends StatefulWidget {
  final String title;
  final double minValue;
  final double maxValue;
  final double initialValue;

  const FullWidthSlider(
      {this.title, this.minValue, this.maxValue, this.initialValue});

  @override
  _FullWidthSliderState createState() => _FullWidthSliderState(
      title: title,
      minValue: minValue,
      maxValue: maxValue,
      initialValue: initialValue);
}

class _FullWidthSliderState extends State<FullWidthSlider> {
  double _currentSliderValue;
  final String title;
  final double minValue;
  final double maxValue;
  final double initialValue;

  _FullWidthSliderState(
      {@required this.title,
      @required this.minValue,
      @required this.maxValue,
      @required this.initialValue});

  @override
  void initState() {
    super.initState();

    _currentSliderValue = initialValue;
  }

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
              min: minValue,
              max: maxValue,
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
