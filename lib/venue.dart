import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/booking.dart';
import 'package:sport/venue_more_detail.dart';

class VenueScreen extends StatefulWidget {
  @override
  _VenueScreenState createState() => _VenueScreenState();
}

class _VenueScreenState extends State<VenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
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
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/icon/back.svg')),
                      maxRadius: 30,
                    ),
                  ),
                  Text(
                    "Venue",
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
                          child: SvgPicture.asset('assets/icon/basketball.svg',
                              color: Colors.blueAccent)),
                      maxRadius: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              EachCard(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              EachCard(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              )
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
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.5, color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuSVTBf4OMQkB-dmhzeXtpiueWW-S9Qip6dQ&usqp=CAU'),
                      fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 10,
                    child: Text(
                      "Minsk City Stadium",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Text(
                          "4.9",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Avg. per hour",
                    style: TextStyle(fontSize: 17),
                  )),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "300 KES",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset('assets/icon/basketball.svg',
                            color: Colors.blueAccent)),
                    maxRadius: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: Container(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/icon/cricket.svg',
                          color: Colors.lightGreenAccent)),
                  maxRadius: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  child: Container(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset('assets/icon/swimming.svg',
                          color: Colors.redAccent)),
                  maxRadius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset('assets/icon/gym.svg',
                            color: Colors.yellowAccent)),
                    maxRadius: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: ModalTrigger()),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookingScreen()));
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.height * 0.17,
                          alignment: Alignment.center,
                          child: const Text(
                            'BOOK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
