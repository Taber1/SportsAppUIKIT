import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
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
                      backgroundColor: Colors.grey[900],
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
                      backgroundColor: Colors.grey[900],
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
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm96ilAyzUnorJ54lXDKHkwicW-C2V7McaAw&usqp=CAU'),
                maxRadius: 170,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VenueScreen()));
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
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.2,
                      alignment: Alignment.center,
                      child: const Text(
                        'FIND A VENUE?',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 0.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                thickness: 1.5,
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
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InviteFriendScreen()));
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
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.2,
                      alignment: Alignment.center,
                      child: const Text(
                        'FIND BUDDIES?',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 0.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Divider(
                thickness: 1.5,
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
              RaisedButton(
                onPressed: () {},
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
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.2,
                      alignment: Alignment.center,
                      child: const Text(
                        'FIND A COACH?',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 0.0),
                      ),
                    ),
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

class EachCard extends StatelessWidget {
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
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: [
                  Colors.grey[900],
                  Colors.grey[900],
                  Colors.grey[850],
                  Colors.grey[800]
                ]),
            borderRadius: BorderRadius.circular(30)),
        height: MediaQuery.of(context).size.height * 0.086,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg'),
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
                      Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            'assets/icon/cricket.svg',
                            color: Colors.yellow,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            'assets/icon/basketball.svg',
                            color: Colors.blueAccent,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            'assets/icon/swimming.svg',
                            color: Colors.redAccent[100],
                          ))
                    ],
                  ),
                  Text('20 - 25 Age',
                      style: TextStyle(
                          color: Colors.grey, letterSpacing: 0, fontSize: 13))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
