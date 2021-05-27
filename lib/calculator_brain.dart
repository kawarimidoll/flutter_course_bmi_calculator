import 'dart:math';

class CalculatorBrain {
  late double _bmi;

  CalculatorBrain({required height, required weight}) {
    _bmi = weight / pow(height / 100.0, 2);
  }

  String getBmiValue() {
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'Your BMI result is quite low, you should eat more!';
    }
  }
}
