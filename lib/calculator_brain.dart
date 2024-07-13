import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are considered overweight. It\'s important to adopt a healthier lifestyle, including a balanced diet and regular exercise.';
    } else if (_bmi > 18.5) {
      return 'Your BMI is within the normal range. Keep maintaining a balanced diet and an active lifestyle to stay healthy.';
    } else {
      return 'You are considered underweight. It might be beneficial to consult a healthcare provider to ensure you are getting adequate nutrition and maintaining a healthy lifestyle.';
    }
  }
}
