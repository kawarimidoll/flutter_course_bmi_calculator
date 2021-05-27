import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: kIconSize),
        SizedBox(height: kLabelGap),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
