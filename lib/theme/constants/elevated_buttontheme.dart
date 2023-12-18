import 'package:flutter/material.dart';


class VicharrelevatedButton {
  VicharrelevatedButton._();


  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: const Color(0xff125488),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle:const TextStyle(fontSize: 18, color: Color(0xfffdfcfa)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
    )
  );

 
 static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor:const Color.fromARGB(255, 72, 152, 233),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle:const TextStyle(fontSize: 18, color: Color(0xff0d0d0d)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
    )
  );
}