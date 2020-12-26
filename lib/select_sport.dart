import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum rating { Yes, No }

class SelectSportScreen extends StatefulWidget {
  @override
  _SelectSportScreenState createState() => _SelectSportScreenState();
}

class _SelectSportScreenState extends State<SelectSportScreen> {
  List<DropdownMenuItem<String>> level = [];
  rating _rate = rating.Yes;
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
    Widget okButton = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      child: RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          "NEXT",
          style: TextStyle(color: Colors.black),
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
          DropdownButtonFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            value: levelselected,
            items: level,
            hint: Text("Beginner"),
            onChanged: (value) {
              levelselected = value;
              setState(() {});
            },
          ),
          Row(
            children: [
              Radio(
                value: rating.Yes,
                groupValue: _rate,
                onChanged: (value) {
                  setState(() {
                    _rate = value;
                  });
                },
              ),
              Text(
                'Yes',
                style: TextStyle(fontSize: 16.0),
              ),
              Radio(
                  value: rating.No,
                  groupValue: _rate,
                  onChanged: (value) {
                    setState(() {
                      _rate = value;
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
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                child: RaisedButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "NEXT",
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
    return Container(
      decoration: BoxDecoration(
          color:
              widget.icolor == Colors.black ? Colors.green : Colors.grey[900],
          borderRadius: BorderRadius.circular(30)),
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 0.42,
      child: Center(
          child: Container(
              height: 50,
              width: 50,
              child: SvgPicture.asset(widget.icon, color: widget.icolor))),
    );
  }
}
