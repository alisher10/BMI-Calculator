import 'dart:math';



class CalculatorBrain {

  CalculatorBrain({this.height, this.weight,});

  final int height;
  final int weight;
  double _bmi;

  String calculatedBMI() {
    _bmi = weight / pow(height/100, 2);//we've divided into 100 to convert a height from cm to m
    return _bmi.toStringAsFixed(1);//decimal place like 18.3
  }

  String getResults() {
    if(_bmi >= 25) {
      return 'Overweight';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You\'ve a higher than normal body weight. Try to exercise more.';
    } else if(_bmi > 18.5) {
      return 'You\'ve a normal body weight. Good job!';
    } else {
      return 'You\'ve a lower than normal body weight. You can eat a bit more';
    }
  }

}
