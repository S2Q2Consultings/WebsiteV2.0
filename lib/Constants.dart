import 'package:flutter/material.dart';

const bgColor = Color(0xFF12229D);
const primaryColor = Color(0xFF3A9bdc);
const secondaryColor = Color(0xFF00ADEF);
const primaryFontColor = Colors.black;
const newColor = Color.fromRGBO(36, 11, 54, 1.0);

const kTextColor = Color(0xFF707070);

SizedBox myDeafaultHeight(double height) {
  return SizedBox(height: height);
}

SizedBox myDeafaultWidth(double width) {
  return SizedBox(width: width);
}

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  spreadRadius: 40,
  blurRadius: 70,
  color: Color.fromARGB(255, 28, 156, 231).withOpacity(0.72),
);

final bDefaultShadow = BoxShadow(
  offset: Offset(0, 20),
  spreadRadius: 15,
  blurRadius: 70,
  color: Color.fromARGB(255, 28, 156, 231).withOpacity(0.72),
);

final eDefaultShadow = BoxShadow(
  offset: Offset(10, 0),
  spreadRadius: 20,
  blurRadius: 30,
  color: Colors.black.withOpacity(0.52),
);

const kDefaultPadding = 20.0;

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);
