import 'package:bmi_calculator/models/bmi_model.dart';

class BmiEvent {
  const BmiEvent(this.width, this.height);
   final double width;
   final double height;
  static BmiEvent calculateBmi(double width, double height) {
    return BmiEvent(width, height);
  }

}
