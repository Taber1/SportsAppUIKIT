import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottomAppbar.dart';
import 'home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Column(
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -10,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white38,
                        border: NeumorphicBorder(width: 2),
                        intensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          suffixIcon: Icon(Icons.person_outline, size: 30)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -10,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white38,
                        border: NeumorphicBorder(width: 2),
                        intensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          suffixIcon: Icon(Icons.person_outline, size: 30)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -10,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white38,
                        border: NeumorphicBorder(width: 2),
                        intensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          suffixIcon: Icon(
                            Icons.mail_outline,
                            size: 30,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -10,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white38,
                        border: NeumorphicBorder(width: 2),
                        intensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          suffixIcon: Icon(FontAwesomeIcons.lockOpen)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -10,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white38,
                        border: NeumorphicBorder(width: 2),
                        intensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          suffixIcon: Icon(FontAwesomeIcons.lockOpen)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomAppbarScreen()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffD2FF66), Color(0xff9AFAA8)]),
                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  ),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.center,
                  child: const Text(
                    'REGISTER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
