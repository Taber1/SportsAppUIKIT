import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/filter.dart';

class EventDetailScreen extends StatefulWidget {
  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
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
            ],
          ),
        ),
      ),
    );
  }
}
