import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  const XMargin(this.width, {super.key});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
