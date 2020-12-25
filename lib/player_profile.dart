import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum q1Ans { Yes, No }

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<DropdownMenuItem<String>> ans = [];
  var aNS;
  List<DropdownMenuItem<String>> age = [];
  var ageselected;
  List<DropdownMenuItem<String>> gender = [];
  var genderselected;
  q1Ans _ans1 = q1Ans.Yes;

  void ansWer() {
    ans = [];
    ans.add(DropdownMenuItem(child: Text("Yes"), value: "Yes"));
    ans.add(DropdownMenuItem(child: Text("No"), value: "No"));
  }

  void loadGender() {
    gender = [];
    gender.add(DropdownMenuItem(child: Text("Male"), value: "Male"));
    gender.add(DropdownMenuItem(child: Text("Female"), value: "Female"));
    gender.add(DropdownMenuItem(child: Text("Trans"), value: "Trans"));
  }

  void loadAge() {
    age = [];
    age.add(DropdownMenuItem(child: Text("20-25"), value: '20-25'));
    age.add(DropdownMenuItem(child: Text("25-30"), value: '25-30'));
    age.add(DropdownMenuItem(child: Text("30-35"), value: '30-35'));
    age.add(DropdownMenuItem(child: Text("35-40"), value: '35-40'));
    age.add(DropdownMenuItem(child: Text("40-45"), value: '40-45'));
    age.add(DropdownMenuItem(child: Text("45-50"), value: '45-50'));
  }

  @override
  Widget build(BuildContext context) {
    ansWer();
    loadAge();
    loadGender();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      value: ageselected,
                      items: age,
                      hint: Text("25-30"),
                      onChanged: (value) {
                        ageselected = value;
                        setState(() {});
                      },
                    ),
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      value: genderselected,
                      items: gender,
                      hint: Text("Male"),
                      onChanged: (value) {
                        genderselected = value;
                        setState(() {});
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Are you member of a club?")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  value: aNS,
                  items: ans,
                  onChanged: (value) {
                    aNS = value;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Which sports do you want to play?")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EachSport(
                    icon: Icons.sports_cricket,
                    color: Colors.redAccent,
                  ),
                  EachSport(
                    icon: Icons.sports_football,
                    color: Colors.tealAccent,
                  ),
                  EachSport(
                    icon: Icons.sports_tennis,
                    color: Colors.grey[900],
                  ),
                  EachSport(
                    icon: Icons.sports_hockey,
                    color: Colors.grey[900],
                  ),
                  EachSport(
                    icon: FontAwesomeIcons.swimmer,
                    color: Colors.yellowAccent,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EachSport(
                    icon: Icons.sports_rugby,
                    color: Colors.grey[900],
                  ),
                  EachSport(
                    icon: Icons.sports_soccer,
                    color: Colors.grey[900],
                  ),
                  EachSport(
                    icon: Icons.sports_volleyball,
                    color: Colors.blueAccent,
                  ),
                  EachSport(
                    icon: Icons.sports_basketball,
                    color: Colors.grey[900],
                  ),
                  EachSport(
                    icon: FontAwesomeIcons.dumbbell,
                    color: Colors.grey[900],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Are you willing to buddy up?",
                    style: TextStyle(fontSize: 22),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Radio(
                    value: q1Ans.Yes,
                    groupValue: _ans1,
                    onChanged: (value) {
                      setState(() {
                        _ans1 = value;
                      });
                    },
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Radio(
                      value: q1Ans.No,
                      groupValue: _ans1,
                      onChanged: (value) {
                        setState(() {
                          _ans1 = value;
                        });
                      }),
                  Text(
                    'No',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Are you a coach?",
                    style: TextStyle(fontSize: 22),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Radio(
                    value: q1Ans.Yes,
                    groupValue: _ans1,
                    onChanged: (value) {
                      setState(() {
                        _ans1 = value;
                      });
                    },
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Radio(
                      value: q1Ans.No,
                      groupValue: _ans1,
                      onChanged: (value) {
                        setState(() {
                          _ans1 = value;
                        });
                      }),
                  Text(
                    'No',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Please share a link",
                    style: TextStyle(),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent),
                      borderRadius: BorderRadius.circular(5)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Upload file",
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.tealAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "UPLOAD",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachSport extends StatefulWidget {
  final IconData icon;
  final Color color;
  EachSport({this.icon, this.color});
  @override
  _EachSportState createState() => _EachSportState();
}

class _EachSportState extends State<EachSport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(30)),
      height: MediaQuery.of(context).size.height * 0.085,
      width: MediaQuery.of(context).size.width * 0.18,
      child: Center(
        child: Icon(
          widget.icon,
          size: 30,
        ),
      ),
    );
  }
}
