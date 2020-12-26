import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
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
                      child: Container(
                          height: 30,
                          width: 30,
                          child:
                              SvgPicture.asset('assets/icon/basketball.svg')),
                      maxRadius: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Day',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Time',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Duration',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Venue',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.tealAccent),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Event Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.caretDown,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "CREATE EVENT",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
