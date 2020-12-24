import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<DropdownMenuItem<String>> age = [];
  var ageselected;
  List<DropdownMenuItem<String>> gender = [];
  var genderselected;

  void loadGender() {
    gender = [];
    gender.add(DropdownMenuItem(child: Text("Male"), value: "Male"));
    gender.add(DropdownMenuItem(child: Text("Female"), value: "Female"));
  }

  void loadAge() {
    age = [];
    age.add(DropdownMenuItem(child: Text("20-25"), value: '20-25'));
  }

  @override
  Widget build(BuildContext context) {
    loadAge();
    loadGender();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Profile")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CircleAvatar(
              backgroundColor: Colors.tealAccent,
              radius: 80,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Name")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  "John Doe",
                  textAlign: TextAlign.left,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Email")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  "johndoe123@gmail.com",
                  textAlign: TextAlign.left,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Phone #")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  "+1(36) 007 1234 789",
                  textAlign: TextAlign.left,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Age")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                DropdownButton(
                  value: ageselected,
                  items: age,
                  hint: Text("25-30"),
                  onChanged: (value) {
                    ageselected = value;
                    setState(() {});
                  },
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Gender")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                DropdownButton(
                  value: genderselected,
                  items: age,
                  hint: Text("Male"),
                  onChanged: (value) {
                    genderselected = value;
                    setState(() {});
                  },
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
