import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/venue_more_detail.dart';

class VenueScreen extends StatefulWidget {
  @override
  _VenueScreenState createState() => _VenueScreenState();
}

class _VenueScreenState extends State<VenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
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
                          child: SvgPicture.asset('assets/icon/back.svg')),
                      maxRadius: 30,
                    ),
                  ),
                  Text(
                    "Venue",
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
                        color: Colors.blueAccent,
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
              EachCard(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              EachCard()
            ],
          ),
        ),
      ),
    );
  }
}

class EachCard extends StatefulWidget {
  @override
  _EachCardState createState() => _EachCardState();
}

class _EachCardState extends State<EachCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.5, color: Colors.tealAccent),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Avg. per hour",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "300 KES",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Icon(
                      Icons.sports_soccer,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                    maxRadius: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: Icon(
                    Icons.sports_cricket,
                    color: Colors.tealAccent,
                    size: 30,
                  ),
                  maxRadius: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: Icon(
                    FontAwesomeIcons.swimmer,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                  maxRadius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Icon(
                      FontAwesomeIcons.dumbbell,
                      color: Colors.yellowAccent,
                      size: 30,
                    ),
                    maxRadius: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: ModalTrigger()),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "BOOK",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
