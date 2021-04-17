import 'package:flutter/material.dart';
import 'package:vivenu_code_test/constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kDarkBlue,
    appBarTheme: AppBarTheme(color: kDarkBlue),
    backgroundColor: kDarkBlue,
    iconTheme: IconThemeData(color: kWhite),
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      subtitle2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: kGrey),
      headline6: TextStyle(fontSize: 20.0, color: kWhite, fontWeight: FontWeight.normal),
      headline4: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(fontSize: 20.0, color: kWhite, fontWeight: FontWeight.bold),
    ),
  );
}
