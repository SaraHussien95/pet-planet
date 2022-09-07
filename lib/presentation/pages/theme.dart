import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 13, 22, 33),
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: KnavbarGrayColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    labelStyle: TextStyle(color: kTextWhiteColor),
    hintStyle: TextStyle(color: kTextWhiteColor),
    prefixIconColor: kTextredColor,
    suffixIconColor: kTextredColor,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextWhiteColor),
    bodyText2: TextStyle(color: kTextWhiteColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color.fromARGB(255, 32, 47, 66),
    elevation: 0,
    brightness: Brightness.light,
    titleTextStyle: TextStyle(color: kTextredColor, fontSize: 18),
    iconTheme: IconThemeData(color: kTextredColor),
  );
}
