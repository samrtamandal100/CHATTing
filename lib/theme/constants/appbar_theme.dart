import 'package:flutter/material.dart';

class VIcharrappbarTheme{
  VIcharrappbarTheme._();


  static AppBarTheme lightappBArTheme = const AppBarTheme(
    backgroundColor: Color(0xffffffff),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xff0d0d0d),
    ) ,
    titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff0d0d0d)),
    // actionsIconTheme: IconThemeData(
    //   color: Color(0xff0d0d0d)
    // )
  );



  ///--dark mode 
  static AppBarTheme darkappBArTheme = const AppBarTheme(
    backgroundColor: Color(0xff333333),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xfffdfcfa),
    ) ,
    titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xfffdfcfa))
  );
}