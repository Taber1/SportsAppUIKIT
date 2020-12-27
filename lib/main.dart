import 'package:flutter/material.dart';
import 'package:sport/login.dart';

void main() {
  Paint.enableDithering = true;
  return runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: "Sport App UI",
      darkTheme: ThemeData(
          unselectedWidgetColor: Colors.grey[800],
          fontFamily: 'Cabin',
          brightness: Brightness.dark,
          primaryColor: Colors.green),
      themeMode: ThemeMode.dark,
      home: LoginScreen(),
    );
  }
}
