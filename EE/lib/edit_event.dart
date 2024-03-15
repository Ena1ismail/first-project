import 'package:ee/create_event.dart';
import 'package:ee/event_details.dart';
import 'package:flutter/material.dart';

class EditEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19, top: 15, right: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Color(0xFF7DB9D2),
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications_active,
                          color: Color(0xFF7DB9D2),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 3),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.create,
                        color: Color(0xFF7DB9D2),
                      ),
                      onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateEvent()),);},
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Create New Event",
                      style: TextStyle(
                        fontFamily: 'Times new roman',
                        fontSize: 18,
                        color: Color(0xFF7DB9D2),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Image.asset(
                    "images/logo.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 2),
                  Text(
                    " My Events",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Times new roman',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 58,
                              height: 80,
                              color: Color(0xFF7DB9D2),
                              child: Center(
                                  child: Text(
                                "10 Nov ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Times new roman',
                                ),
                              )),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Entrepreneurship in Marketing - The Hashemite University",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          fontFamily: 'Times new roman',
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "10 NOV ,2023 at 1:00",
                                        style: TextStyle(
                                          color: Color(0xFF7DB9D2),
                                          fontSize: 12,
                                          fontFamily: 'Times new roman',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuButton<String>(
                              onSelected: (String value) {
                                if (value == 'Edit') {
                                } else if (value == 'Remove') {}
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'Edit',
                                  child: ListTile(
                                    title: Text(
                                      'Edit Event Info',
                                      style: TextStyle(
                                        fontFamily: 'Times new roman',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                PopupMenuDivider(
                                  height: 1,
                                ),
                                PopupMenuItem<String>(
                                  value: 'Remove',
                                  child: ListTile(
                                    title: Text(
                                      'Remove Event',
                                      style: TextStyle(
                                        fontFamily: 'Times new roman',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              icon: Icon(
                                Icons.border_color,
                                color: Color(0xFF7DB9D2),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 184, 204, 221)),
                              ),
                              color: Color(0xFF7DB9D2),
                              tooltip: '',
                              offset: Offset(-20, 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 5),
                        child: Center(
                          child: Text(
                            "This session clarifies key marketing concepts, methods, and strategic issues relevant for start-up and early-stage entrepreneurs",
                            style: TextStyle(
                              fontFamily: 'Times new roman',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EventDetails()),);},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE8DF18),
                        ),
                        child: Text(
                          "Event Details  >",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.people,
                              color: Color(0xFF7DB9D2),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("22"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                               width: 58,
                              height: 80,
                              color: Color(0xFF7DB9D2),
                              child: Center(
                                  child: Text(
                                "22 Nov ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Times new roman',
                                ),
                              )),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Financial Statements Development",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          fontFamily: 'Times new roman',
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "22 NOV ,2023 at 1:00",
                                        style: TextStyle(
                                          color: Color(0xFF7DB9D2),
                                          fontSize: 12,
                                          fontFamily: 'Times new roman',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            PopupMenuButton<String>(
                              onSelected: (String value) {
                                if (value == 'Edit') {
                                } else if (value == 'Remove') {}
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'Edit',
                                  child: ListTile(
                                    title: Text(
                                      'Edit Event Info',
                                      style: TextStyle(
                                        fontFamily: 'Times new roman',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                PopupMenuDivider(
                                  height: 1,
                                ),
                                PopupMenuItem<String>(
                                  value: 'Remove',
                                  child: ListTile(
                                    title: Text(
                                      'Remove Event',
                                      style: TextStyle(
                                        fontFamily: 'Times new roman',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              icon: Icon(
                                Icons.border_color,
                                color: Color(0xFF7DB9D2),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 184, 204, 221)),
                              ),
                              color: Color(0xFF7DB9D2),
                              tooltip: '',
                              offset: Offset(-20, 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 5),
                        child: Center(
                          child: Text(
                            "A training course for graduate students at Hashemite University for scientific disciplines on how to write a research scientific paper..",
                            style: TextStyle(
                              fontFamily: 'Times new roman',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EventDetails()),);},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE8DF18),
                        ),
                        child: Text(
                          "Event Details  >",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.people,
                              color: Color(0xFF7DB9D2),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("24"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  )),
              GestureDetector(
                onTap: () {
                  // اتخذ الإجراء عند الضغط
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.35, vertical: 10),
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                     
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Load More ...",
                          style: TextStyle(
                            fontFamily: 'Times new roman',
                            fontSize: 14, 
                            color: Color(0xFF7DB9D2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
