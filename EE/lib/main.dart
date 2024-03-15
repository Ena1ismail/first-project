


import 'package:ee/create_event.dart';
import 'package:ee/edit_event.dart';
import 'package:ee/event_details.dart';
import 'package:ee/events.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: EditEvent(),
    );
  }
}
