import 'package:bmi_calculator/models/bmi_model.dart';

abstract class BmiStates {}

class BmiInitial extends BmiStates {}

class BmiResult extends BmiStates {
  final BMIModel bmiModel;
  BmiResult({required this.bmiModel});
}