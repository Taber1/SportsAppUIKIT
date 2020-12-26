import 'package:flutter/material.dart';
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
                      TextField(
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
                        activeColor: Colors.green,
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
                            children: [
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.3,
                                child: RaisedButton(
                                  color: Colors.green,
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.transgender,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Any",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.3,
                                child: RaisedButton(
                                  color: Colors.grey[700],
                                  onPressed: () {},
                                  child: Row(
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
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.3,
                                child: RaisedButton(
                                  color: Colors.grey[700],
                                  onPressed: () {},
                                  child: Row(
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
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.21,
                                child: RaisedButton(
                                    color: Colors.grey[700],
                                    onPressed: () {},
                                    child: Text("Any")),
                              ),
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.21,
                                child: RaisedButton(
                                    color: Colors.green,
                                    onPressed: () {},
                                    child: Text(
                                      "Beginner",
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.21,
                                child: RaisedButton(
                                    color: Colors.grey[700],
                                    onPressed: () {},
                                    child: Text("Intermediate")),
                              ),
                              ButtonTheme(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.21,
                                child: RaisedButton(
                                    color: Colors.grey[700],
                                    onPressed: () {},
                                    child: Text("Expert")),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      ButtonTheme(
                        height: MediaQuery.of(context).size.height * 0.07,
                        minWidth: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: Colors.green,
                            onPressed: () {},
                            child: Text(
                              "APPLY",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
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
