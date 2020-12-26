import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottomAppbar.dart';

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
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.tealAccent),
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(Icons.person_outline, size: 30)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.tealAccent),
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(Icons.person_outline, size: 30)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.tealAccent),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.tealAccent),
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(FontAwesomeIcons.lockOpen)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.tealAccent),
                            borderRadius: BorderRadius.circular(5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                        suffixIcon: Icon(FontAwesomeIcons.lockOpen)),
                  ),
                ],
              ),
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
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
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
