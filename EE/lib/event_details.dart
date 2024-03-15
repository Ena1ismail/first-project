import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  int selectedIndex = 0;

  bool homeSelected = false;
  bool chatSelected = false;
  bool profileSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.06,
              top: screenHeight * 0.03,
              right: screenWidth * 0.06),
          child: Column(
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
              SizedBox(
                height: 13,
              ),
              Container(
                
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  color: Colors.white,
                
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Align(  alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 58,
                                  height: 58,
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
                            ),
                          Container(
                            width: 240,
                            height: 240,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage('images/teamwork.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 17.0),
                          Text(
                            "Entrepreneurship in Marketing",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Times new roman',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: screenWidth * 0.12),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_month,
                                    color: Color(0xFF7DB9D2)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "10 NOV ,2023 at 1:00",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Times new roman',
                                    color: Color(0xFF7DB9D2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 9),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Location:",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Times new roman',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "  Faculty Of Economics",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Times new roman',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 9),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Published  By:",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Times new roman',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " Dr. Ali Zain",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Times new roman',
                                    color: Color(0xFF7DB9D2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Text(
                              "This event is offered by Step By Step company. In this intensive three-hours workshop, you will delve into the core principles and advanced techniques that drive successful marketing campaigns in the digital era. Led by industry experts with proven track records, this session is tailored to empower marketers at all levels.",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Times new roman',
                              ),
                            ),
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF7DB9D2),
        currentIndex: selectedIndex,
        onTap: onTapped,
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
              onTap: () {},
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

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
      homeSelected = index == 0;
      chatSelected = index == 1;
      profileSelected = index == 2;
    });
  }
}
