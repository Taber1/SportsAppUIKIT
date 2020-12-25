import 'package:flutter/material.dart';

class ModalTrigger extends StatelessWidget {
  moreDeatilBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Text(
                    "More Details",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Opening Hours",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.tealAccent),
                          borderRadius: BorderRadius.circular(5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: '10 Am -10 Pm',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Available",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Parking",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Wifi",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Security",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Changing Room",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Restaurant",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Rules",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0),
      child: InkWell(
        onTap: () {
          moreDeatilBottomSheet(context);
        },
        child: Text(
          "MORE DETAILS",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.tealAccent),
        ),
      ),
    );
  }
}
