import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                onPressed: () {},
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Buddies",
                style: TextStyle(fontSize: 20, color: Colors.grey[300]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
