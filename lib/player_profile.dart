import 'package:flutter/material.dart';

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
                children: [EachSport()],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EachSport extends StatefulWidget {
  final IconData icon;
  EachSport({this.icon});
  @override
  _EachSportState createState() => _EachSportState();
}

class _EachSportState extends State<EachSport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(30)),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Center(
        child: Icon(
          Icons.sports_cricket,
          size: 30,
        ),
      ),
    );
  }
}
