import 'dart:ui';

import 'package:bmi_calculator/components/plus_minus_bar.dart';
import 'package:bmi_calculator/components/text_type.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/status.dart';
import '../resultScreen/result_screen.dart';
import 'componants/male_female.dart';

class HomeView extends StatelessWidget {
  Color color = Colors.white38;
  Status weight = Status('weight', const ['kg', 'lb']);
  Status height = Status('height', const ['cm', 'ft']);
  late BMIModel bmiModel;

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: TextType('BMI Calculator', 30),
            ),
            MaleFemale(),
            const SizedBox(height: 20),
            Expanded(child: weight),
            Expanded(child: height),
            const TextType('Age', 15),
            PlusMinusBar(true,weight: 20,),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  double result = (weight.res.weight ) / ((height.res.weight/ 100) * (height.res.weight/ 100));
                  if (result >= 18.5 && result <= 24.9){
                    bmiModel = BMIModel(result, true, 'You have a normal weight. Good job!',);
                  } else if (result < 18.5) {
                    bmiModel = BMIModel(result, false, 'You are underweight. You need to gain some weight.',);
                  } else if (result > 24.9 && result <= 30) {
                    bmiModel = BMIModel(result, false, 'You are overweight. You need to lose some weight.',);
                  } else {
                    bmiModel = BMIModel(result, false, 'You are obese. You need to lose some weight.',);
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(bmiModel),));
                },
                child: const Text('Calculate'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
