import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectSportScreen extends StatefulWidget {
  @override
  _SelectSportScreenState createState() => _SelectSportScreenState();
}

class _SelectSportScreenState extends State<SelectSportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
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
                      maxRadius: 35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    "Sport",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What sport do you want to play?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
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
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(30)),
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 0.45,
      child: Center(
        child: Icon(
          FontAwesomeIcons.volleyballBall,
          color: Colors.grey,
          size: 60,
        ),
      ),
    );
  }
}
