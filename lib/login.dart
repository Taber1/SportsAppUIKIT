import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/bottomAppbar.dart';
import 'package:sport/register.dart';

import 'innerShadow.dart';

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
                CustomContainer(
                  child: TextField(
                      decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'sarahkaramsi@gmail.com',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
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
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
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
                            colors: [
                          Colors.tealAccent[100],
                          Colors.lightGreenAccent[100],
                          Colors.lightGreenAccent,
                        ])),
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
                    Colors.tealAccent[100],
                    Colors.lightGreenAccent[100],
                    Colors.lightGreenAccent,
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.lightGreenAccent,
                        Colors.lightGreenAccent[100],
                        Colors.tealAccent[100]
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
                          colors: [
                            Colors.lightBlueAccent,
                            Colors.blueAccent,
                            Colors.grey[900],
                            Colors.black
                          ])),
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
                          colors: [
                            Colors.redAccent,
                            Colors.red,
                            Colors.grey[900],
                            Colors.black
                          ])),
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
                        color: Colors.green,
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
