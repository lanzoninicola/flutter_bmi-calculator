import 'package:bmi_calculator/enums/operations.dart';

class MinusPlusInputEntity {
  final int initialValue;
  final int minValue;
  final int maxValue;
  int _currentValue = 0;

  MinusPlusInputEntity({
    this.initialValue,
    this.minValue = 0,
    this.maxValue = 999999,
  });

  int getInitialValue() {
    return initialValue;
  }

  int getMinValue() {
    return minValue;
  }

  int getMaxValue() {
    return maxValue;
  }

  void decreaseValue() {
    int nextCurrentValue;
    nextCurrentValue = getCurrentValue();
    nextCurrentValue--;
    nextCurrentValue =
        nextCurrentValue < minValue ? minValue : nextCurrentValue;
    _currentValue = nextCurrentValue;
  }

  void increaseValue() {
    int nextCurrentValue;
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

  int getCurrentValue() {
    if (_currentValue == 0) {
      return initialValue;
    }
    return _currentValue;
  }
}
