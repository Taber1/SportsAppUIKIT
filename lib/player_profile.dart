import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum q1Ans { Yes, No }
enum q2Ans { Yes, No }

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
  q2Ans _ans2 = q2Ans.Yes;

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
              Center(
                  child: Text(
                "Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg',
                ),
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
                      child: Text(
                        "Name",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    "John Doe",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, color: Colors.grey[200]),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Row(
                    children: [
                      Text(
                        "johndoe123@gmail.com",
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff9FFAA2)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Icon(
                        FontAwesomeIcons.caretRight,
                        size: 15,
                        color: Color(0xffDCBC50),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text(
                        "Phone #",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    "+1(36) 007 1234 789",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text(
                        "Age",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          color: Colors.transparent,
                          depth: -10,
                          shadowDarkColorEmboss: Colors.black,
                          shadowLightColorEmboss: Colors.white38,
                          border: NeumorphicBorder(width: 2),
                          intensity: 0.8,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20))),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        value: ageselected,
                        items: age,
                        hint: Text(
                          "25-30",
                          style: TextStyle(fontSize: 17),
                        ),
                        onChanged: (value) {
                          ageselected = value;
                          setState(() {});
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text(
                        "Gender",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          color: Colors.transparent,
                          depth: -10,
                          shadowDarkColorEmboss: Colors.black,
                          shadowLightColorEmboss: Colors.white38,
                          border: NeumorphicBorder(width: 2),
                          intensity: 0.8,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20))),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        value: genderselected,
                        items: gender,
                        hint: Text(
                          "Male",
                          style: TextStyle(fontSize: 17),
                        ),
                        onChanged: (value) {
                          genderselected = value;
                          setState(() {});
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Are you member of a club?",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      color: Colors.transparent,
                      depth: -10,
                      shadowDarkColorEmboss: Colors.black,
                      shadowLightColorEmboss: Colors.white38,
                      border: NeumorphicBorder(width: 2),
                      intensity: 0.8,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20))),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    value: aNS,
                    items: ans,
                    onChanged: (value) {
                      aNS = value;
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Which sports do you want to play?",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EachSport(
                    icon: 'assets/icon/football.svg',
                    color: [Color(0xffD95255), Color(0xffEE865C)].toList(),
                    icolor: Colors.black,
                  ),
                  EachSport(
                    icon: 'assets/icon/cricket.svg',
                    color: [Color(0xffD2FF66), Color(0xff9AFAA8)].toList(),
                    icolor: Colors.black,
                  ),
                  EachSport(
                    icon: 'assets/icon/badminton.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  ),
                  EachSport(
                    icon: 'assets/icon/basketball.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  ),
                  EachSport(
                    icon: 'assets/icon/swimming.svg',
                    color: [Color(0xffCA872C), Color(0xffFBEE45)].toList(),
                    icolor: Colors.black,
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
                    icon: 'assets/icon/gym.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  ),
                  EachSport(
                    icon: 'assets/icon/rugby.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  ),
                  EachSport(
                    icon: 'assets/icon/squash.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  ),
                  EachSport(
                    icon: 'assets/icon/tennis.svg',
                    color: [Colors.blueAccent, Colors.blue[200]].toList(),
                    icolor: Colors.black,
                  ),
                  EachSport(
                    icon: 'assets/icon/netball.svg',
                    color: [Color(0xff151618), Color(0xff262729)].toList(),
                    icolor: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                indent: 10,
                thickness: 1.5,
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  CustomRadioWidget(
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
                  CustomRadioWidget(
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
                thickness: 1.5,
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                children: [
                  CustomRadioWidget(
                    value: q2Ans.Yes,
                    groupValue: _ans2,
                    onChanged: (value) {
                      setState(() {
                        _ans2 = value;
                      });
                    },
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  CustomRadioWidget(
                      value: q2Ans.No,
                      groupValue: _ans2,
                      onChanged: (value) {
                        setState(() {
                          _ans2 = value;
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
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
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
                        BorderRadius.circular(20))),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
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
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.23,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff9AFAA8), Color(0xffD2FF66)]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xffD2FF66),
                                  Color(0xff9AFAA8)
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              width: MediaQuery.of(context).size.height * 0.17,
                              alignment: Alignment.center,
                              child: const Text(
                                'UPLOAD',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5),
                              ),
                            ),
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
                thickness: 1.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              RaisedButton(
                onPressed: () {},
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
                      height: MediaQuery.of(context).size.height * 0.045,
                      width: MediaQuery.of(context).size.height * 0.17,
                      alignment: Alignment.center,
                      child: const Text(
                        'NEXT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.5),
                      ),
                    ),
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
  final String icon;
  final List<Color> color;
  final Color icolor;
  EachSport({this.icon, this.color, this.icolor});
  @override
  _EachSportState createState() => _EachSportState();
}

class _EachSportState extends State<EachSport> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 3,
        shadowLightColorEmboss: Colors.white,
        shadowDarkColorEmboss: Colors.black,
        border: NeumorphicBorder(
          width: 2,
        ),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        intensity: 0.3,
        disableDepth: false,
        shape: NeumorphicShape.flat,
        lightSource: LightSource.bottomRight,
        shadowLightColor: Colors.white,
        shadowDarkColor: Colors.black,
        oppositeShadowLightSource: true,
        surfaceIntensity: 0.9,
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: widget.color),
            borderRadius: BorderRadius.circular(30)),
        height: MediaQuery.of(context).size.height * 0.085,
        width: MediaQuery.of(context).size.width * 0.18,
        child: Center(
            child: Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset(widget.icon, color: widget.icolor))),
      ),
    );
  }
}

class CustomRadioWidget<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;

  CustomRadioWidget(
      {this.value,
      this.groupValue,
      this.onChanged,
      this.width = 17,
      this.height = 17});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onChanged(this.value);
        },
        child: Container(
          height: this.height,
          width: this.width,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            gradient: LinearGradient(
              colors: [Colors.lightGreenAccent, Colors.tealAccent[100]],
            ),
          ),
          child: Center(
            child: Container(
              height: this.height - 3,
              width: this.width - 3,
              decoration: ShapeDecoration(
                shape: CircleBorder(side: BorderSide(width: 3)),
                gradient: LinearGradient(
                  colors: value == groupValue
                      ? [Colors.lightGreenAccent, Colors.tealAccent[100]]
                      : [
                          Theme.of(context).scaffoldBackgroundColor,
                          Theme.of(context).scaffoldBackgroundColor,
                        ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
