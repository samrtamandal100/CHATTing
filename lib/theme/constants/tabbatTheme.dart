import 'package:flutter/material.dart';

class VicharrTabbarTheme {
  VicharrTabbarTheme._();

  static TabBarTheme lightmodeTabbar = TabBarTheme(
   labelColor: const Color(0xff125488),
  //  unselectedLabelColor: Colors.grey.shade600,
   unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14, fontFamily: 'Noto Sans Japanese'),
   indicatorColor: Colors.grey.shade900,
   indicator: BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade300,
   ),
   labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Noto Sans Japanese'),
   dividerColor:const  Color(0xfff6f6f6),
  );



  static TabBarTheme darkmodeTabbar = TabBarTheme(
  labelColor:const  Color(0xff0080ff),
  //  unselectedLabelColor: Colors.grey.shade600,
   indicatorColor: Colors.grey.shade500,
   indicator: BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(10),
    color: const Color(0xff333333),
   ),
   dividerColor: const Color(0xff333333),
  labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Noto Sans Japanese'),
  unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14, fontFamily: 'Noto Sans Japanese'),
  );
}