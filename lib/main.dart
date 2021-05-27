import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/screens/input_page.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainColor,
        scaffoldBackgroundColor: kMainColor,
      ),
      home: InputPage(),
    );
  }
}
