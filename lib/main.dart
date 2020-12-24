import 'package:flutter/material.dart';
import 'package:sport/login.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sport App UI",
      darkTheme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.tealAccent),
      themeMode: ThemeMode.dark,
      home: LoginScreen(),
    );
  }
}
