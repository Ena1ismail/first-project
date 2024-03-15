import 'package:ee/event_details.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
                        Icons.arrow_back,
                        color: Color(0xFF7DB9D2),
                      ),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.notifications_active,
                        color: Color(0xFF7DB9D2),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Image.asset(
                      "images/logo.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 2),
                    Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Times new roman',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF7DB9D2),
                          ),
                          hintText: "Filter Events",
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 177, 176, 176),
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: Color(0xFF7DB9D2), width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.toc,
                        color: Color(0xFF7DB9D2),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                height: screenHeight * 0.3,
                                width: screenWidth,
                                padding: EdgeInsets.only(
                                    top: 7, right: 14, left: 14),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Clear",
                                          style: TextStyle(
                                            color: Color(0xFF7DB9D2),
                                            fontSize: 15,
                                            fontFamily: 'Times new roman',
                                          ),
                                        ),
                                        Text("Filter By",
                                            style: TextStyle(
                                              color: Color(0xFF7DB9D2),
                                              fontSize: 15,
                                              fontFamily: 'Times new roman',
                                            )),
                                        IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              color: Color(0xFF7DB9D2),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              side: BorderSide(
                                                  color: Color(0xFF7DB9D2),
                                                  width: 1),
                                            )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "By Date",
                                              style: TextStyle(
                                                fontFamily: 'Times new roman',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.expand_more_sharp)
                                          ],
                                        )),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              side: BorderSide(
                                                  color: Color(0xFF7DB9D2),
                                                  width: 1),
                                            )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "By Interest",
                                              style: TextStyle(
                                                fontFamily: 'Times new roman',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.expand_more_sharp)
                                          ],
                                        )),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 10),
                                        primary: Color(0xFF7DB9D2),
                                        onPrimary: Colors.black,
                                        elevation: 5,
                                      ),
                                      child: Text("Apply",
                                          style: TextStyle(
                                            fontFamily: 'Times new roman',
                                            fontSize: 14,
                                          )),
                                    ),
                                  ],
                                ));
                          },
                        );
                      },
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventDetails()),
                            );
                          },
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
                                height: 58,
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventDetails()),
                            );
                          },
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
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF7DB9D2),
        currentIndex: 0,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {},
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {},
              child: Icon(Icons.chat),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.white,
                      child: Center(
                        child: Text('BottomSheet Content Here'),
                      ),
                    );
                  },
                );
              },
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
