import 'package:flutter/material.dart';

//One place to manage all the textStyle inside the app
const TextTheme textTheme = TextTheme(
  headline1: kTextStyleHeadline1,
  headline2: kTextStyleHeadline2,
  headline3: kTextStyleHeadline3,
  headline4: kTextStyleHeadline4,
  headline5: kTextStyleHeadline5,
  subtitle1: kTextStyleSubTitle1,
  subtitle2: kTextStyleSubTitle2,
  bodyText1: kTextStyleBody1,
  bodyText2: kTextStyleBody2,
);

const TextStyle kTextStyleHeadline1 = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 24,
);
const TextStyle kTextStyleHeadline2 = TextStyle(
  fontWeight: FontWeight.w700,
  color: Colors.white,
  fontSize: 24,
);
const TextStyle kTextStyleHeadline3 = TextStyle(
  fontWeight: FontWeight.w700,
  color: Colors.black,
  fontSize: 20,
);
const TextStyle kTextStyleHeadline4 = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontSize: 20,
);
const TextStyle kTextStyleHeadline5 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
);
const TextStyle kTextStyleBody1 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 16,
);
const TextStyle kTextStyleBody2 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 16,
);

const TextStyle kTextStyleSubTitle1 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: Colors.white,
);

const TextStyle kTextStyleSubTitle2 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color: Colors.white,
);
