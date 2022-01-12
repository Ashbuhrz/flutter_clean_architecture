import 'package:flutter/material.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

//Custom button for circular wrapped icon button
class IconButtonCircular extends StatelessWidget {
  const IconButtonCircular(
      {Key? key, this.onTap, required this.iconString, this.color})
      : super(key: key);
  final VoidCallback? onTap;
  final String iconString;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 50,
      borderRadius: BorderRadius.circular(50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CircleAvatar(
          backgroundColor: color ?? ColorConst.greyColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              iconString,
              width: 24,
            ),
          ),
        ),
      ),
    );
  }
}
