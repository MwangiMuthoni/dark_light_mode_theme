import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color? color;
  final Widget? child;
  Box({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      width: 200,
      height: 200,
      padding: EdgeInsets.all(50),
      child: child,
    );
  }
}
