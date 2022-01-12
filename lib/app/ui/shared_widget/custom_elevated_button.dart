import 'package:flutter/material.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

// Custom ElevatedButton with some inbuilt designs
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.title,
      this.onPressed,
      this.buttonColor,
      this.elevation})
      : super(key: key);

  final String title;
  final Color? buttonColor;
  final double? elevation;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation ?? 4),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 16),
        ),
        backgroundColor: MaterialStateProperty.all(
          buttonColor ?? ColorConst.greyColorShade300,
        ),
      ),
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
