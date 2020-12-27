import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';
import 'package:sport/game_details.dart';

class InviteFriendScreen extends StatefulWidget {
  @override
  _InviteFriendScreenState createState() => _InviteFriendScreenState();
}

class _InviteFriendScreenState extends State<InviteFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
                  "Buddies",
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
                        child: SvgPicture.asset('assets/icon/basketball.svg')),
                    maxRadius: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            EachCard(
              image:
                  'https://cdn.pixabay.com/photo/2015/09/03/06/59/man-920083__340.jpg',
              icon: 'assets/icon/basketball.svg',
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            EachCard(
              image:
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__340.jpg',
              icon: 'assets/icon/cricket.svg',
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            EachCard(
              image:
                  'https://cdn.pixabay.com/photo/2017/02/20/10/30/fashion-2082066__340.jpg',
              icon: 'assets/icon/gym.svg',
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventDetailScreen()));
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
                      'NEXT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        ),
      ),
    ));
  }
}

class EachCard extends StatelessWidget {
  final String image;
  final String icon;
  final String name;
  final String gender;
  final String age;
  final String level;
  EachCard(
      {this.icon, this.image, this.name, this.gender, this.age, this.level});
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
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        width: MediaQuery.of(context).size.width * 0.87,
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
                    backgroundImage: NetworkImage(image),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    gender,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "Age",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  Text(
                    age,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "Level",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Text(
                    level,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "Sports",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Container(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icon/basketball.svg',
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Container(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icon/cricket.svg',
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Container(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icon/gym.svg',
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Divider(
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check,
                    size: 35,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Invited",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.w200),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
