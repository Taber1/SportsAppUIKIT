import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/bottomAppbar.dart';
import 'package:sport/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
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
                          hintText: 'sarahkaramsi@gmail.com',
                          hintStyle: TextStyle(fontSize: 18),
                          suffixIcon: Icon(
                            Icons.mail,
                          ))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
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
                        hintText: '********',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(
                          FontAwesomeIcons.lockOpen,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [Color(0xffD2FF66), Color(0xff9AFAA8)])),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 22,
                        width: 22,
                        color: Colors.grey[800],
                        child: Checkbox(
                          value: _checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              _checkedValue = newValue;
                            });
                          },
                          // controlAffinity:
                          //     ListTileControlAffinity.leading, //  <-- leading Checkbox
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    'Stay Signed In',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              InkWell(
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(
                      fontSize: 16, decoration: TextDecoration.underline),
                ),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            RaisedButton(
              color: Colors.transparent,
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
                  gradient: LinearGradient(colors: [
                    Color(0xff9AFF6A),
                    Color(0xff98FC69),
                    Color(0xff95F667),
                    Color(0xff7FC65D),
                    Color(0xff598246),
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.height * 0.2,
                alignment: Alignment.center,
                child: const Text(
                  'SIGN IN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "or sign in with",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff33A7E2), Color(0xff131314)])),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.grey[900],
                                Colors.grey[700]
                              ])),
                      child: SvgPicture.asset(
                        'assets/icon/facebook.svg',
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(15.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffDC6A54), Color(0xff131314)])),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.grey[900],
                                Colors.grey[700]
                              ])),
                      child: SvgPicture.asset(
                        'assets/icon/google_plus.svg',
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(7.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff9AFAA8),
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
