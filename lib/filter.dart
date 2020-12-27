import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _values = RangeValues(10, 60);
  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }

  moreDeatilBottomSheet(context) {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Activities",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
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
                            hintText:
                                'Football, Cricket, Swimming, Fitness, Tennis, Badminton, Rugby, Gymming',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Age",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      RangeSlider(
                        activeColor: Color(0xffACFB92),
                        inactiveColor: Colors.grey,
                        values: _values,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        labels: RangeLabels(
                          _values.start.round().toString(),
                          _values.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _values = values;
                          });
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Gender",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        colors: [
                                          Color(0xff9AFAA8),
                                          Color(0xffD2FF66),
                                        ]),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.045,
                                      width: MediaQuery.of(context).size.width *
                                          0.27,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xffD2FF66),
                                          Color(0xff9AFAA8)
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.transgender,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "ANY",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Colors.grey[700],
                                            Colors.grey[700],
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.grey[700],
                                            Colors.grey[700],
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.mars,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Male")
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Colors.grey[700],
                                            Colors.grey[700],
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.045,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.grey[700],
                                            Colors.grey[700],
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.venus,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Female")
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Level",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Color(0xffD2FF66),
                                            Color(0xff9AFAA8)
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.20,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xffD2FF66),
                                              Color(0xff9AFAA8)
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "ANY",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Color(0xff232426),
                                            Color(0xff232426)
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.20,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xff232426),
                                              Color(0xff232426)
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "BEGINNER",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Color(0xff232426),
                                            Color(0xff232426)
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.20,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xff232426),
                                              Color(0xff232426)
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "INTERMEDIATE",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  letterSpacing: -1.5),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
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
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft,
                                          colors: [
                                            Color(0xff232426),
                                            Color(0xff232426)
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.20,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Colors.grey[700],
                                              Colors.grey[700],
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "EXPERT",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                            gradient: LinearGradient(
                                colors: [Color(0xffD2FF66), Color(0xff9AFAA8)]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          child: const Text(
                            'APPLY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moreDeatilBottomSheet(context);
      },
      child: Icon(
        FontAwesomeIcons.filter,
        color: Colors.grey,
        size: 30,
      ),
    );
  }
}
