import 'package:flutter/material.dart';

const kAppNativeColor = Color(0xff06623b);

const kTextFieldDecoration = InputDecoration(
    hintText: 'Full Name',
    hintStyle: TextStyle(
      fontFamily: 'Segoe-ui',
      fontWeight: FontWeight.bold,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Color(0xff06623b), width: 1.0)),
    fillColor: Color(0xfff2f2f2),
    filled: true,
    focusColor: Colors.white);

const kTextLabelStyle = TextStyle(
    fontFamily: 'Segoe-ui', fontWeight: FontWeight.bold, color: Colors.black54);

const kInputStyle = TextStyle(
  fontFamily: 'Segoe-ui',
  fontWeight: FontWeight.bold,
);

const kButtonTextStyle = TextStyle(
    fontFamily: 'Segoe-ui',
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: Colors.white);

const kButtonBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0)),
    side: BorderSide(color: Colors.black54));

const kTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Segoe-ui',
    fontWeight: FontWeight.bold,
    fontSize: 20.0);
