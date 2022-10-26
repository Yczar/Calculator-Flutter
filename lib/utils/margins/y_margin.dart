import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {
  const YMargin(this.height, {super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
