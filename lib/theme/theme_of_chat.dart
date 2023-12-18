import 'package:chater/theme/constants/custom_text_theme.dart';
import 'package:chater/theme/constants/elevated_buttontheme.dart';
import 'package:chater/theme/constants/icon_theme.dart';
import 'package:chater/theme/constants/tabbatTheme.dart';
import 'package:flutter/material.dart';

class VicharrTheme{
  VicharrTheme._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'NotoSansJP',
    brightness: Brightness.light,
    primaryColor: const Color(0xffffffff),
    iconTheme: VicharriconTheme.lightmodeIconTheme,
    primaryTextTheme: VicharrtextTheme.lighttextTheme,
    scaffoldBackgroundColor:const Color(0xfff6f6f6),
    textTheme: VicharrtextTheme.lighttextTheme,
    tabBarTheme: VicharrTabbarTheme.lightmodeTabbar,
    focusColor: Color(0xff125488),
    elevatedButtonTheme: VicharrelevatedButton.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
        useMaterial3: true,
    fontFamily: 'NotoSansJP',
    brightness: Brightness.dark,
    primaryColor: const Color(0xff333333),
    iconTheme: VicharriconTheme.darkmodeIconTheme,
    primaryTextTheme: VicharrtextTheme.darktextTheme,
    scaffoldBackgroundColor: const Color(0xff121212),
    textTheme: VicharrtextTheme.darktextTheme,
    tabBarTheme: VicharrTabbarTheme.darkmodeTabbar,
    focusColor: Color(0xff0080ff),
    elevatedButtonTheme: VicharrelevatedButton.darkElevatedButtonTheme
  );

}