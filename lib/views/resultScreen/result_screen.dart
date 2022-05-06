import 'package:bmi_calculator/components/text_type.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class ResultScreen extends StatelessWidget {
  final BMIModel bmiModel;

  const ResultScreen(this.bmiModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications_none), onPressed: () {})
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const TextType('Result', 30),
            SizedBox(
                width: 300.0,
                height: 100.0,
                child: Sparkline(
                  data: const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
                  lineColor: Colors.blue,
                  pointsMode: PointsMode.atIndex,
                  pointIndex: bmiModel.bmi.toInt(),
                  pointSize: 8.0,
                  pointColor: Colors.green,

                )
            ),
            const SizedBox(height: 20.0),
            TextType('Your BMI Is ${bmiModel.bmi.toStringAsFixed(2)}', 30),
            SizedBox(height: 20.0),
            TextType(bmiModel.bmiText, 10),
          ],
        ),
      ),
    );
  }
}
