import 'package:flutter/material.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';
import 'package:immo_spot/app/ui/theme/app_text_theme.dart';

//One Place to manage the ThemeData
final ThemeData appThemeData = ThemeData(
  primaryColor: ColorConst.primaryColor,
  secondaryHeaderColor: ColorConst.secondaryColor,
  splashColor: ColorConst.greyColor,
  highlightColor: ColorConst.greyColor,
  fontFamily: 'Poppins',
  textTheme: textTheme,
);
