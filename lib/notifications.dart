import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';

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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icon/back.svg')),
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
                    child: Icon(
                      Icons.sports_soccer,
                      size: 30,
                      color: Colors.grey,
                    ),
                    maxRadius: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                value: null,
                items: null,
                hint: Text("Event Name"),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                value: null,
                items: null,
                hint: Text("Date"),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                value: null,
                items: null,
                hint: Text("Time"),
                onChanged: (value) {
                  setState(() {});
                },
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
              icon: Icons.person,
              name: 'John Doe',
              status: "IN",
              color: Colors.tealAccent,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            EachCard(
              icon: Icons.person,
              name: 'Don Jhoe',
              status: "PENDING",
              color: Colors.yellowAccent,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            EachCard(
              icon: Icons.person,
              name: 'Ohn Djoe',
              status: "OUT",
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    ));
  }
}

class EachCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final String status;
  final Color color;
  EachCard({this.icon, this.name, this.status, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  icon,
                  size: 30,
                ),
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
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.13,
            height: MediaQuery.of(context).size.height * 0.03,
            child: RaisedButton(
              onPressed: () {},
              color: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                status,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
