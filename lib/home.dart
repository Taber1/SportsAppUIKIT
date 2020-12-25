import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';
import 'package:sport/invite_friend.dart';
import 'package:sport/venue.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                      child: Theme(
                          data: Theme.of(context)
                              .copyWith(canvasColor: Colors.transparent),
                          child: FilterScreen()),
                      maxRadius: 30,
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      child: Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        size: 30,
                      ),
                      maxRadius: 30,
                    ),
                  )
                ],
              ),
              CircleAvatar(
                maxRadius: 170,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VenueScreen()));
                  },
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "FIND A VENUE?",
                    style: TextStyle(color: Colors.black, letterSpacing: 0.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Buddies",
                  style: TextStyle(fontSize: 20, color: Colors.grey[300]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EachCard(),
                  EachCard(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EachCard(),
                  EachCard(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InviteFriendScreen()));
                  },
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "FIND BUDDIES?",
                    style: TextStyle(color: Colors.black, letterSpacing: 0.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Coaches",
                  style: TextStyle(fontSize: 20, color: Colors.grey[300]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EachCard(),
                  EachCard(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "FIND A COACH?",
                    style: TextStyle(color: Colors.black, letterSpacing: 0.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.38,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              maxRadius: 27,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("John Doe"),
                Row(
                  children: [
                    Icon(
                      Icons.sports_cricket,
                      size: 15,
                      color: Colors.tealAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.futbol,
                      size: 15,
                      color: Colors.lightBlueAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.swimmer,
                      size: 15,
                      color: Colors.redAccent[100],
                    )
                  ],
                ),
                Text('20 - 25 Age')
              ],
            )
          ],
        ),
      ),
    );
  }
}
