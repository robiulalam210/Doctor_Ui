import 'package:flutter/material.dart';
import 'package:groupuiproject/home.dart';
import 'package:groupuiproject/nav/bootomnavigation.dart';
import 'package:groupuiproject/nav/doctorlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(),
    );
  }
}
