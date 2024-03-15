import 'package:ee/edit_event.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  TextEditingController Title = TextEditingController();
  TextEditingController Description = TextEditingController();
  TextEditingController More = TextEditingController();
  TextEditingController Location = TextEditingController();
  TextEditingController Dateandtime = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.01, right: screenWidth * 0.05,left: screenWidth * 0.05),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF7DB9D2),
                    ),
                    onPressed: ()  {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditEvent()),
                            );
                          },
                  )),
              SizedBox(
                height: 2,
              ),
              Center(
                child: Text(
                  "New Events, New Opportunities",
                  style: TextStyle(
                      color: Color(0xFF0C6CA2),
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(1, 1),
                        ),
                      ],
                      fontFamily: 'Times new roman',  fontStyle: FontStyle.italic,
                      fontSize: 17),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                
                margin: EdgeInsets.symmetric(horizontal: 14),
                padding: EdgeInsets.only(left: 10, right: 10, top: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: TextStyle(  fontFamily: 'Times new roman',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      TextField(
                          controller: Title,
                          decoration: InputDecoration(
                              hintText: "T",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF7DB9D2), width: 1.0),
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(  fontFamily: 'Times new roman',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      TextField(
                          controller: Description,
                          decoration: InputDecoration(
                              hintText:
                                  "Write a small preview about the event ..",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF7DB9D2), width: 1.0),
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "More Details",
                        style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      TextField(
                          controller: More,
                          decoration: InputDecoration(
                              hintText: "Exceed with more details ..",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF7DB9D2), width: 1.0),
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      TextField(
                        controller: Location,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.location_on, color: Color(0xFF7DB9D2)),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF7DB9D2), width: 1.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date & Time",
                        style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      TextField(
                        controller: Dateandtime,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.access_time, color: Color(0xFF7DB9D2)),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF7DB9D2), width: 1.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Interest Tags", style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14,))),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF7DB9D2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Add +",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15
                              , vertical: 10),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(color: Colors.blue, width: 1),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Add", style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14,)),
                            SizedBox(width: 5),
                            Icon(Icons.add_a_photo),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 22,
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    primary: Color(0xFF7DB9D2),
                    onPrimary: Colors.black,
                    elevation: 5,
                  ),
                  child: Text("Publish", style: TextStyle(fontFamily: 'Times new roman',
                            fontSize: 14,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
