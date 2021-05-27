import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_course_bmi_calculator/components/footer_large_button.dart';
import 'package:flutter_course_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';

enum BmiType { overweight, normal, underweight }
Map<BmiType, String> messages = {
  BmiType.overweight:
      'You have a higher than normal body weight. Try to exercise more.',
  BmiType.normal: 'You have a normal body weight.',
  BmiType.underweight: 'Your BMI result is quite low, you should eat more!',
};

const testBmi = BmiType.overweight;

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(describeEnum(testBmi), style: kResultTextStyle),
                  Text('26.7', style: kBmiTextStyle),
                  Text(
                    messages[testBmi] ?? '',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          FooterLargeButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
