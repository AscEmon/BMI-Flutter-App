
import 'dart:math';

class Calculator_brain{

  Calculator_brain({this.heights, this.weights});
  final int heights;
  final int weights;
  double _bmi;
  String Calculation()
  {

    _bmi=(weights/pow(heights/100,2));
    return _bmi.toStringAsFixed(1);

  }

  String getResult()
  {

    if(_bmi>=25)
    {
      return 'OVERWEIGHT';
    }
    else if(_bmi>=18.5)
    {
      return 'NORMAL';
    }
    else
    {
      return 'UNDERWEIGHT';
    }

  }

  String getInterpretation()
  {
    if(_bmi>=25)
    {
      return 'You have a higher than Normal body weight,Try to exercise more';
    }
    else if(_bmi>=18.5)
    {
      return 'You have a Normal Body weight.Good Job!';
    }
    else
    {
      return 'You have a loweer than Normal body weight,Try to eat more';
    }




  }
  





}