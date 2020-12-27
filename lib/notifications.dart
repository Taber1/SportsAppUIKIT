import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/icon/back.svg')),
                  maxRadius: 30,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: Container(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/icon/basketball.svg')),
                  maxRadius: 30,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Event Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Day',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Time',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 10),
                child: Text("Players",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1))),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            EachCard(
              icon:
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg',
              name: 'John Doe',
              status: "IN",
              color: [Color(0xffD2FF66), Color(0xff9AFAA8)].toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            EachCard(
              icon:
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg',
              name: 'John Doe',
              status: "PENDING",
              color: [
                Color(0xffE8AD01),
                Color(0xffE8AD01),
              ].toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            EachCard(
              icon:
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg',
              name: 'John Doe',
              status: "OUT",
              color: [Color(0xffF24141), Color(0xffF24141)].toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    ));
  }
}

class EachCard extends StatelessWidget {
  final String icon;
  final String name;
  final String status;
  final List color;
  EachCard({this.icon, this.name, this.status, this.color});
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
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
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
        padding: EdgeInsets.only(left: 15, right: 15),
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: [Color(0xff151618), Color(0xff262729)]),
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(icon),
                  maxRadius: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.grey[900],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              padding: EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: color,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: color),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.height * 0.12,
                    alignment: Alignment.center,
                    child: Text(
                      status,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
