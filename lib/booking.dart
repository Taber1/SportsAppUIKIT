import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:collection/collection.dart';
import 'package:sport/booking_2.dart';

Function eq = const ListEquality().equals;

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
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
                  "Booking",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  "Nov",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
                Text("Dec", style: TextStyle(fontSize: 22)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  VerticalCard(
                    date: "8th",
                    day: "Wed",
                    color: [
                      Colors.lightGreenAccent,
                      Colors.lightGreenAccent[100],
                      Colors.tealAccent[100]
                    ].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "9th",
                    day: "Thurs",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "10th",
                    day: "Fri",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "11th",
                    day: "Sat",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "12th",
                    day: "Sun",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "13th",
                    day: "Mon",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "14th",
                    day: "Tues",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "15th",
                    day: "Wed",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "16th",
                    day: "Thur",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "17th",
                    day: "Fri",
                    color: [Colors.grey[900], Colors.grey[900]].toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Available Slots",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: MediaQuery.of(context).size.height *
                      1.2 /
                      MediaQuery.of(context).size.width *
                      0.8,
                  children: List.generate(choices.length, (index) {
                    return HorizontalCard(
                      choice: choices[index],
                    );
                  })),
            ),
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
              child: TextField(
                  decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Total Amount',
                suffixStyle: TextStyle(color: Colors.green, fontSize: 22),
                suffix: Text('300 KES'),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Booking2Screen()));
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
                      'PAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    ));
  }
}

class Choice {
  const Choice({this.time1, this.time2, this.color});
  final String time1;
  final String time2;
  final List color;
}

List<Choice> choices = <Choice>[
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '6am', time2: '7am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am',
      time2: '9am',
      color: [
        Colors.lightGreenAccent,
        Colors.lightGreenAccent[100],
        Colors.tealAccent[100]
      ].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '6am', time2: '7am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am',
      time2: '9am',
      color: [
        Colors.lightGreenAccent,
        Colors.lightGreenAccent[100],
        Colors.tealAccent[100]
      ].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '7am', time2: '8am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
  Choice(
      time1: '8am', time2: '9am', color: [Colors.grey, Colors.grey].toList()),
];

class HorizontalCard extends StatelessWidget {
  final Choice choice;
  const HorizontalCard({Key key, this.choice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          color: Colors.transparent,
          depth: -10,
          shadowDarkColorEmboss: Colors.black,
          shadowLightColorEmboss: Colors.white38,
          border: NeumorphicBorder(width: 2),
          intensity: 0.8,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
      child: Container(
        // width: MediaQuery.of(context).size.width*0.1,
        // height: MediaQuery.of(context).size.height*0.2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: eq(choice.color, [Colors.grey, Colors.grey].toList())
                    ? [Colors.transparent, Colors.transparent]
                    : choice.color),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              choice.time1 + "-" + choice.time2,
              style: TextStyle(
                  color: eq(choice.color, [Colors.grey, Colors.grey])
                      ? Colors.white
                      : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalCard extends StatelessWidget {
  final String date;
  final String day;
  final List color;
  VerticalCard({this.date, this.day, this.color});
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          color: Colors.transparent,
          depth: -10,
          shadowDarkColorEmboss: Colors.black,
          shadowLightColorEmboss: Colors.white38,
          border: NeumorphicBorder(width: 2),
          intensity: 0.8,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50))),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: color),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: EdgeInsets.all(3),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: color),
                borderRadius: BorderRadius.circular(50)),
            width: MediaQuery.of(context).size.width * 0.19,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      fontSize: 22,
                      color: eq(color,
                              [Colors.grey[900], Colors.grey[900]].toList())
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  day,
                  style: TextStyle(
                      fontSize: 22,
                      color: eq(color,
                              [Colors.grey[900], Colors.grey[900]].toList())
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
