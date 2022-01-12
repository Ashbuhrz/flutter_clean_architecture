import 'package:flutter/material.dart';


// Custom Column with padding inbuilt
class ColumnPadding extends StatelessWidget {
  const ColumnPadding(
      {Key? key,
      this.padding,
      required this.children,
      this.mainAxisAlignment,
      this.crossAxisAlignment})
      : super(key: key);
  final List<Widget> children;
  final EdgeInsets? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: children,
      ),
    );
  }
}
