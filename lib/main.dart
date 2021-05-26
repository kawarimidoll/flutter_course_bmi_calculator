import 'package:flutter/material.dart';
import 'input_page.dart';

const mainColor = Color(0xFF0A0D22);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: mainColor,
        scaffoldBackgroundColor: mainColor,
      ),
      home: InputPage(),
    );
  }
}
