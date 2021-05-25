import 'package:flutter/material.dart';

const iconSize = 80.0;
const labelGap = 15.0;
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: iconSize),
        SizedBox(height: labelGap),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
