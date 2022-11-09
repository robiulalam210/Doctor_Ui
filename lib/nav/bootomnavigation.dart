import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:groupuiproject/home.dart';
import 'package:groupuiproject/nav/appointment.dart';
import 'package:groupuiproject/nav/doctorlist.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final page=[HomePage(),Appointment(),HomePageDimo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.message, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.settings, size: 30),

        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;

            // if(index==2){
            //
            //  // showModalBottomSheet(context: context, builder: (context)=>AddProject());
            //
            // }
          });
        },
        letIndexChange: (index) => true,
      ),
      body: page[_page],

    );
  }
}