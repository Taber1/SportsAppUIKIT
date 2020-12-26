import 'package:flutter/material.dart';

Container con(Widget wid) {
  Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(-1, -1),
        end: Alignment(-1, -0.1),
        colors: [Colors.black45, Colors.transparent],
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0.1),
          colors: [Colors.grey[900], Colors.transparent],
        ),
      ),
      child: Container(
        child: Container(
          child: wid,
        ),
      ),
    ),
  );
}
