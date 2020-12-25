import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8),
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
                "Booking",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            children: [
              Text(
                "Nov",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              Text("Dec", style: TextStyle(fontSize: 22)),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    ));
  }
}
