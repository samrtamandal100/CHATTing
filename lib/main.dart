import 'package:chater/Group/groups.dart';
import 'package:chater/theme/theme_of_chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: VicharrTheme.lightTheme,
      darkTheme: VicharrTheme.darkTheme,
     debugShowCheckedModeBanner: false,
     home: GroupHome(),
    );
  }
}
