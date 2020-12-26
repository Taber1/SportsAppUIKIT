import 'package:flutter/material.dart';
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
                TextField(
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
                      suffixIcon: Icon(
                        Icons.mail_outline,
                        size: 30,
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
                  Checkbox(
                    value: _checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        _checkedValue = newValue;
                      });
                    },
                    // controlAffinity:
                    //     ListTileControlAffinity.leading, //  <-- leading Checkbox
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
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.05,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomAppbarScreen()));
                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
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
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  child: SvgPicture.asset(
                    'assets/icon/facebook.svg',
                    color: Colors.grey,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(side: BorderSide(color: Colors.blue)),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 5.0,
                  child: SvgPicture.asset(
                    'assets/icon/google_plus.svg',
                    color: Colors.grey,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(side: BorderSide(color: Colors.red)),
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
