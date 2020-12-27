import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';

class EventDetailScreen extends StatefulWidget {
  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
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
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterScreen()));
                        },
                        child: Icon(
                          FontAwesomeIcons.filter,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                      maxRadius: 30,
                    ),
                  ),
                  Text(
                    "Event Details",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: Container(
                          height: 30,
                          width: 30,
                          child:
                              SvgPicture.asset('assets/icon/basketball.svg')),
                      maxRadius: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
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
                        BorderRadius.circular(10))),
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
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
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
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Duration',
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
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Venue',
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
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10))),
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
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffD2FF66), Color(0xff9AFAA8)]),
                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  ),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: const Text(
                    'CREATE EVENT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
