import 'package:flutter/material.dart';
import 'package:sport/login.dart';

void main() {
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
          fontFamily: 'Cabin',
          brightness: Brightness.dark,
          primaryColor: Colors.tealAccent),
      themeMode: ThemeMode.dark,
      home: LoginScreen(),
    );
  }
}
