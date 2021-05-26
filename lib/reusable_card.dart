import 'package:flutter/material.dart';

const cardHeight = 200.0;
const cardMargin = 15.0;
const cardRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final void Function()? onTap;

  ReusableCard({required this.color, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(cardMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        height: cardHeight,
      ),
    );
  }
}
