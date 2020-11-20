import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '肥満気味です';
    } else if (_bmi > 18.5) {
      return '通常体型です';
    } else {
      return '痩せ型です';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '通常体型より重いようです。トレーニングを心がけましょう！';
    } else if (_bmi >= 18.5) {
      return '通常体型です。この調子！';
    } else {
      return '通常体型より痩せているようです。栄養バランスを考えましょう！';
    }
  }
}
