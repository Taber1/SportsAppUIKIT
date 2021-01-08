import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport/player_profile.dart';

enum q2Ans { Yes, No }

class SelectSportScreen extends StatefulWidget {
  @override
  _SelectSportScreenState createState() => _SelectSportScreenState();
}

class _SelectSportScreenState extends State<SelectSportScreen> {
  List<DropdownMenuItem<String>> level = [];

  q2Ans _ans2 = q2Ans.Yes;
  var levelselected;
  void loadLevel() {
    level = [];
    level.add(DropdownMenuItem(child: Text("Beginner"), value: "Beginner"));
    level.add(
        DropdownMenuItem(child: Text("Intermediate"), value: "Intermediate"));
    level.add(DropdownMenuItem(child: Text("Expert"), value: "Expert"));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = RaisedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
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
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: const Text(
          'NEXT',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(20)),
      title: Text("Level"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Neumorphic(
            style: NeumorphicStyle(
                color: Colors.transparent,
                depth: -10,
                shadowDarkColorEmboss: Colors.black,
                shadowLightColorEmboss: Colors.white38,
                border: NeumorphicBorder(width: 2),
                intensity: 0.8,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
              value: levelselected,
              items: level,
              hint: Text("Beginner"),
              onChanged: (value) {
                levelselected = value;
                setState(() {});
              },
            ),
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
        ],
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    loadLevel();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/icon/back.svg')),
                      maxRadius: 35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    "Sport",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What sport do you want to play?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EachCard(
                    icon: 'assets/icon/football.svg',
                    icolor: Colors.grey,
                  ),
                  EachCard(
                    icon: 'assets/icon/cricket.svg',
                    icolor: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EachCard(
                    icon: 'assets/icon/badminton.svg',
                    icolor: Colors.grey,
                  ),
                  EachCard(
                    icon: 'assets/icon/basketball.svg',
                    icolor: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EachCard(
                    icon: 'assets/icon/gym.svg',
                    icolor: Colors.grey,
                  ),
                  EachCard(
                    icon: 'assets/icon/swimming.svg',
                    icolor: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EachCard(
                    icon: 'assets/icon/rugby.svg',
                    icolor: Colors.grey,
                  ),
                  EachCard(
                    icon: 'assets/icon/squash.svg',
                    icolor: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EachCard(
                    icon: 'assets/icon/tennis.svg',
                    icolor: Colors.grey,
                  ),
                  EachCard(
                    icon: 'assets/icon/netball.svg',
                    icolor: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RaisedButton(
                color: Colors.transparent,
                onPressed: () {
                  showAlertDialog(context);
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
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: const Text(
                    'NEXT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachCard extends StatefulWidget {
  final Color icolor;
  final String icon;
  EachCard({this.icon, this.icolor});
  @override
  _EachCardState createState() => _EachCardState();
}

class _EachCardState extends State<EachCard> {
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
                colors: widget.icolor == Colors.black
                    ? [Color(0xff9AFAA8), Color(0xffD2FF66)]
                    : [Color(0xff151618), Color(0xff262729)]),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(-1, -1),
                    end: Alignment(1, 1),
                    colors: widget.icolor == Colors.black
                        ? [
                            Color(0xffD2FF66),
                            Color(0xff9AFAA8),
                          ]
                        : [
                            Colors.grey[900],
                            Colors.grey[900],
                            Colors.grey[850],
                            Colors.grey[800]
                          ]),
                borderRadius: BorderRadius.circular(30)),
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.42,
            child: Center(
                child: Container(
                    height: 50,
                    width: 50,
                    child:
                        SvgPicture.asset(widget.icon, color: widget.icolor))),
          ),
        ),
      ),
    );
  }
}
