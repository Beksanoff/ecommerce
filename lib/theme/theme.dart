import 'package:flutter/material.dart';

const baseCategoryStyle = TextStyle(
  fontFamily: 'Mark Medium',
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  height: 15 / 12.0, // line-height / font-size
  letterSpacing: -0.3333333432674408,
);

final categoriesNamed =
    baseCategoryStyle.copyWith(color: const Color(0xFFFF6E4E));
final categoriesNamed2 =
    baseCategoryStyle.copyWith(color: const Color(0xFF010035));

const searchStyle = TextStyle(
  fontFamily: 'Mark Pro',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  height: 1.25,
  letterSpacing: -0.3333333432674408,
);

const viewAll = TextStyle(
  color: Color(0xFFFF6E4E),
  fontFamily: 'Mark Pro',
  fontWeight: FontWeight.w400,
  fontSize: 15,
  letterSpacing: -0.33,
);

const selectCategory = TextStyle(
  color: Color(0xFF010035),
  fontFamily: 'Mark Bold',
  fontSize: 25,
  fontWeight: FontWeight.w700,
  letterSpacing: -0.33,
);

const appBarStyle = TextStyle(
    color: Color(0xFF010035),
    fontFamily: 'Mark Medium',
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    height: 19.0 / 15.0,
    letterSpacing: -0.3333333432674408);

final eccomeretheme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Color(0xFFFF6E4E)),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 247, 245, 245),
  ),
  primaryColor: const Color(0xFFFF6E4E),
  primaryIconTheme: const IconThemeData(color: Color(0xFFFF6E4E)),
  scaffoldBackgroundColor: const Color(0xFF010035),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: Color(0xFFFFFFFF),
          height: 33.0 / 30.0,
          fontFamily: 'Mark Heavy',
          fontSize: 30,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.33),
      labelMedium: TextStyle(
        fontFamily: 'Mark Pro',
        fontWeight: FontWeight.w400,
        fontSize: 18,
      )),
);
