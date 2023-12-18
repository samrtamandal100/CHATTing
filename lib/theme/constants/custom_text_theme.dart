import 'package:flutter/material.dart';

class VicharrtextTheme{
  VicharrtextTheme._();



  static TextTheme lighttextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize:25,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),
    headlineMedium: const TextStyle().copyWith(fontSize:20,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),
    headlineSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xff0d0d0d) ),


    titleLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),
    titleMedium: const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),
    titleSmall:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),


    bodyLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xff0d0d0d) ),
    bodyMedium:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.w400, color: const Color(0xff0d0d0d) ),
    bodySmall:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.w300, color: const Color(0xff0d0d0d) ),

 
   
    labelLarge:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.normal, color: const Color(0xffcccccc) ),
    labelMedium:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w400, color: const Color(0xffcccccc) ),
    labelSmall:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w300, color: const Color(0xffcccccc) ),


  );



  static TextTheme darktextTheme = TextTheme(
     headlineLarge:  const TextStyle().copyWith(fontSize:25,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),
    headlineMedium: const TextStyle().copyWith(fontSize:20,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),
    headlineSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),


    titleLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),
    titleMedium: const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),
    titleSmall:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),


    bodyLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xfffdfcfa) ),
    bodyMedium:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.w400, color: const Color(0xfffdfcfa) ),
    bodySmall:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.w300, color: const Color(0xfffdfcfa) ),

 
   
    labelLarge:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.normal, color: const Color(0xff333333) ),
    labelMedium:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w400, color: const Color(0xff333333) ),
    labelSmall:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w300, color: const Color(0xff333333) ),
  );
}