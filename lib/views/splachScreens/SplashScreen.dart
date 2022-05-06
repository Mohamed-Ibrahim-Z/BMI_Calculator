import 'dart:async';

import 'package:bmi_calculator/views/homeView/home_view.dart';
import 'package:flutter/material.dart';

import '../homeView/componants/male_female.dart';

class SplachScreen extends StatefulWidget {
  SplachScreen({Key? key}) : super(key: key);
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );



  }


}
