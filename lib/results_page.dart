import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'reusable_card.dart';
import 'footer_large_button.dart';
import 'constants.dart';

enum BmiType { overweight, normal, underweight }
Map<BmiType, String> messages = {
  BmiType.overweight:
      'You have a higher than normal body weight. Try to exercise more.',
  BmiType.normal: 'You have a normal body weight.',
  BmiType.underweight: 'You have a lower than normal body weight.',
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
        children: <Widget>[
          Expanded(
            child: Container(
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
                  Text(describeEnum(testBmi)),
                  Text('26.7', style: kNumberTextStyle),
                  Text(messages[testBmi] ?? ''),
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
