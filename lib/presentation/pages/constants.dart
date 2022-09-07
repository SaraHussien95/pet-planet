import 'package:flutter/material.dart';

const defaultPadding = 15.0;

const kHeadTextSize = 30.0;

const KbtnRedColor = Color.fromARGB(255, 252, 1, 1);
const KnavbarGrayColor = Color.fromARGB(255, 32, 47, 66);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 194, 1, 1),
    Color.fromARGB(255, 252, 1, 1),
  ],
);
const kTextWhiteColor = Color.fromARGB(255, 249, 212, 212);
const kTextredColor = Color.fromARGB(255, 249, 164, 164);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: kTextWhiteColor,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

enum MenuState { home, search, category, profile }

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: defaultPadding),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: KnavbarGrayColor),
  );
}
