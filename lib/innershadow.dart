import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Widget child;
  CustomContainer({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1, -1),
          end: Alignment(-1, -0.4),
          colors: [Colors.black45, Colors.transparent],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   // begin: Alignment.topLeft,
            //   // end: Alignment.center,
            //   colors: [Colors.black45, Colors.transparent],
            // ),
            ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              colors: [
                Colors.black45,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [Colors.black45, Colors.transparent],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1, 1),
                  end: Alignment(1, 0.1),
                  colors: [Colors.grey[700], Colors.transparent],
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.center,
                    colors: [
                      Colors.grey[700],
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent
                    ],
                  ),
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
