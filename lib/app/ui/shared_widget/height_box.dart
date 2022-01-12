import 'package:flutter/material.dart';

// Custom SizedBox with default height.
class HeightBox extends StatelessWidget {
  const HeightBox([this.height, Key? key]) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 12,
    );
  }
}
