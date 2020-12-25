import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';

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
            EachCard(
              icon: Icons.person,
              color: Colors.yellowAccent,
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            EachCard(
              icon: Icons.person,
              color: Colors.blueAccent,
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            EachCard(
              icon: Icons.person,
              color: Colors.redAccent,
              name: "John Doe",
              gender: "Male",
              age: "20-25",
              level: 'Beginner',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.05,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.black),
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
  final IconData icon;
  final Color color;
  final String name;
  final String gender;
  final String age;
  final String level;
  EachCard(
      {this.icon, this.color, this.name, this.gender, this.age, this.level});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
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
                  child: Icon(Icons.sports_cricket),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  child: Icon(Icons.sports_soccer),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  child: Icon(
                    FontAwesomeIcons.dumbbell,
                    size: 17,
                  ),
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
                  color: Colors.tealAccent,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Invited",
                  style: TextStyle(
                      color: Colors.tealAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w200),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
