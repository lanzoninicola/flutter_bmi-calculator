import 'package:bmi_calculator/enums/bmi_categories.dart';
import 'enums/gender.dart';

// TODO: apply abstraction

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;
  int _bmi;
  String _categoryName;
  String _categoryInterpretation;
  Map<String, String> _result;

  void calculateBMI() {
    _bmi = (weight / (height * height)) as int;
  }

  // Map<String, String> getResults() {
  //   calculateBMI();

  //   _result = BmiCategoryFactory.getResult(_bmi);

  //   return {
  //     'bmiValue': _bmi.toStringAsFixed(1),
  //     'category': _result['category'],
  //     'interpretation': _result['interpretation']
  //   };
  // }
}

class BmiCategoryFactory {
  String _name;
  double _minValue;
  double _maxValue;
  String _interpretation;

  bool _isInsideTreshold;

  String getName() {
    return _name;
  }

  String getInterpretation() {
    return _interpretation;
  }

  bool isInsideThreshold(int bmi) {
    if (bmi > _minValue && bmi < _maxValue) {
      return true;
    }

    return false;
  }

  Map<String, String> getResult(int bmi) {
    isInsideThreshold(bmi);

    if (_isInsideTreshold == true) {
      return {'category': _name, 'interpretation': _interpretation};
    }

    return {'category': 'undefined', 'interpretation': 'undefined'};
  }
}

class UnderweightBmiCategory extends BmiCategoryFactory {
  String _name = 'Underweight';
  double _minValue = 18.6;
  double _maxValue = 24.9;
  String _interpretation = 'You are underweight.';
}


/**
  BmiCategory _underweight = BmiCategory(
      name: 'Underweight',
      minValue: 0,
      maxValue: 18.5,
      interpretation: 'You are underweight.');
  BmiCategory _normalWeight = BmiCategory(
      name: 'Underweight',
      minValue: 18.6,
      maxValue: 24.9,
      interpretation: 'You are in normal weight.');
  BmiCategory _overweight = BmiCategory(
      name: 'Underweight',
      minValue: 25.0,
      maxValue: 29.9,
      interpretation: 'You are in normal weight.');
  BmiCategory _obesity = BmiCategory(
      name: 'Underweight',
      minValue: 30,
      maxValue: 999999999.9,
      interpretation: 'You are in normal weight.');
 */