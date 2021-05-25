import 'package:flutter/material.dart';

const cardHeight = 200.0;
const cardMargin = 15.0;
const cardRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;

  ReusableCard({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(cardMargin),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      height: cardHeight,
    );
  }
}
