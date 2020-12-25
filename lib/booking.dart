import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  "Nov",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
                Text("Dec", style: TextStyle(fontSize: 22)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  VerticalCard(
                    date: "8th",
                    day: "Wed",
                    color: Colors.tealAccent,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "9th",
                    day: "Thurs",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "10th",
                    day: "Fri",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "11th",
                    day: "Sat",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "12th",
                    day: "Sun",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "13th",
                    day: "Mon",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "14th",
                    day: "Tues",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "15th",
                    day: "Wed",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "16th",
                    day: "Thur",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerticalCard(
                    date: "17th",
                    day: "Fri",
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Available Slots",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 16,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.height /
                          MediaQuery.of(context).size.width *
                          0.8,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalCard();
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            TextField(
                decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent),
                  borderRadius: BorderRadius.circular(5)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: 'Total Amount',
              suffixStyle: TextStyle(color: Colors.tealAccent, fontSize: 22),
              suffixText: '300 KES',
            )),
          ],
        ),
      ),
    ));
  }
}

class HorizontalCard extends StatelessWidget {
  final String time1;
  final String time2;
  final Color color;
  HorizontalCard({this.time1, this.time2, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(15)),
    );
  }
}

class VerticalCard extends StatelessWidget {
  final String date;
  final String day;
  final Color color;
  VerticalCard({this.date, this.day, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            date,
            style: TextStyle(
                fontSize: 22,
                color: color == Colors.grey[900] ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            day,
            style: TextStyle(
                fontSize: 22,
                color: color == Colors.grey[900] ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
