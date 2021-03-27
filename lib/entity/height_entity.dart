import 'package:bmi_calculator/interfaces/full_width_slider.dart';

class HeightSlider extends IFullWidthSlider {
  final double initialValue;
  final double minValue;
  final double maxValue;
  double _currentValue = 0;

  HeightSlider({this.initialValue, this.minValue = 0, this.maxValue = 999999});

  double getMinValue() {
    return minValue;
  }

  double getMaxValue() {
    return maxValue;
  }

  double getInitialValue() {
    return initialValue;
  }

  double getCurrentValue() {
    if (_currentValue == 0) {
      return initialValue;
    }
    return _currentValue;
  }

  void setCurrentValue(double value) {
    _currentValue = value;
  }
}
