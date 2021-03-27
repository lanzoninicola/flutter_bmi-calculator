import 'package:bmi_calculator/enums/operations.dart';
import 'package:bmi_calculator/interfaces/minus_plus_input_entity.dart';

class AgeEntity extends IMinusPlusInputEntity {
  final double initialValue;
  final double minValue;
  final double maxValue;
  double _currentValue = 0;

  AgeEntity({
    this.initialValue,
    this.minValue = 0,
    this.maxValue = 999999,
  });

  @override
  double getInitialValue() {
    return initialValue;
  }

  double getMinValue() {
    return minValue;
  }

  double getMaxValue() {
    return maxValue;
  }

  void decreaseValue() {
    double nextCurrentValue;
    nextCurrentValue = getCurrentValue();
    nextCurrentValue--;
    nextCurrentValue =
        nextCurrentValue < minValue ? minValue : nextCurrentValue;
    _currentValue = nextCurrentValue;
  }

  void increaseValue() {
    double nextCurrentValue;
    nextCurrentValue = getCurrentValue();
    print(_currentValue);
    nextCurrentValue++;
    print(nextCurrentValue);
    nextCurrentValue =
        nextCurrentValue > maxValue ? maxValue : nextCurrentValue;
    _currentValue = nextCurrentValue;
  }

  void changeData(Operations operation) {
    if (operation == Operations.minus) {
      decreaseValue();
    }

    if (operation == Operations.plus) {
      increaseValue();
    }
  }

  double getCurrentValue() {
    if (_currentValue == 0) {
      return initialValue;
    }
    return _currentValue;
  }
}
