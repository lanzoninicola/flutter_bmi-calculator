import 'package:bmi_calculator/enums/operations.dart';
import 'package:bmi_calculator/interfaces/data_selector.dart';

abstract class IMinusPlusInputEntity extends DataSelector {
  void decreaseValue() {}

  void increaseValue() {}

  void changeData(Operations operation) {}
}
