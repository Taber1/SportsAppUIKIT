import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Booking2Screen extends StatefulWidget {
  @override
  _Booking2ScreenState createState() => _Booking2ScreenState();
}

class _Booking2ScreenState extends State<Booking2Screen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.tealAccent,
                          size: 35,
                        ),
                      ),
                      maxRadius: 30,
                    ),
                  ),
                  Text(
                    "Your Bookings",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: Icon(
                        Icons.sports_soccer,
                        color: Colors.grey,
                        size: 30,
                      ),
                      maxRadius: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              EachCard(
                icon: Icons.sports_cricket,
                color: Colors.yellowAccent,
                sport: "Cricket",
                date: "Oct 26, Mon",
                time: "8 - 9 Am, 9-10 Am",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              EachCard(
                icon: FontAwesomeIcons.futbol,
                color: Colors.blueAccent,
                sport: "Football",
                date: "Oct 27, Tue",
                time: "9 - 10 Am, 10-11 Am",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EachCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String sport;
  final String date;
  final String time;
  EachCard({this.icon, this.color, this.sport, this.date, this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Colors.grey[900],
                  child: Icon(
                    icon,
                    size: 30,
                    color: color,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  sport,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                Text(
                  "Date",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                Text(
                  "Time",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}