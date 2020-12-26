import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/player_profile.dart';
import 'package:sport/select_sport.dart';

import 'booking.dart';
import 'home.dart';
import 'notifications.dart';

class BottomAppbarScreen extends StatefulWidget {
  @override
  _BottomAppbarScreenState createState() => _BottomAppbarScreenState();
}

class _BottomAppbarScreenState extends State<BottomAppbarScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> screen = [
    HomeScreen(),
    NotificationScreen(),
    SelectSportScreen(),
    BookingScreen(),
    ProfileScreen()
  ];

  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: PageStorage(bucket: bucket, child: currentScreen),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          onPressed: () {
            setState(() {
              currentScreen = SelectSportScreen();
              currentTab = 5;
            });
          },
          child: Image.asset('assets/images/sport-35492.png')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            currentScreen = HomeScreen();
                            currentTab = 0;
                          });
                        },
                        child: Icon(Icons.home,
                            size: 32,
                            color:
                                currentTab == 0 ? Colors.green : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = NotificationScreen();
                            currentTab = 1;
                          });
                        },
                        child: Icon(Icons.notifications_none_outlined,
                            size: 32,
                            color:
                                currentTab == 1 ? Colors.green : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = BookingScreen();
                            currentTab = 2;
                          });
                        },
                        child: Icon(FontAwesomeIcons.calendarAlt,
                            size: 32,
                            color:
                                currentTab == 2 ? Colors.green : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = ProfileScreen();
                            currentTab = 3;
                          });
                        },
                        child: Icon(Icons.person_outline,
                            size: 32,
                            color:
                                currentTab == 3 ? Colors.green : Colors.grey),
                      ),
                    ),
                  ])),
        ),
      ),
    );
  }
}
