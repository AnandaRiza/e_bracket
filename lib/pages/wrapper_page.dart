import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_bracket/auth/main_page.dart';
import 'package:e_bracket/pages/home_page.dart';
import 'package:e_bracket/pages/notification_page.dart';
import 'package:e_bracket/pages/profile_page.dart';

class WrapperPage extends StatefulWidget {
  WrapperPage({Key? key}) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int _currentwidget = 1;

  List<Widget> _widgetOptions = <Widget>[
    NotificationPage(),
    HomePage(),
    ProfilePage(),
  ];

  // void onTap(int index) {
  //   setState(() {
  //     _currentwidget = index;
  //   });
  // }

  void _changeSelectedNavBar(int index) {
    setState(() {
      _currentwidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentwidget),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentwidget,
        backgroundColor: Color(0xFF79018C),
        selectedItemColor: Color.fromRGBO(250, 88, 184, 100),
        onTap: (int index) => _changeSelectedNavBar(index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
            backgroundColor: Color(0xFF79018C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF79018C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xFF79018C),
          ),
        ],
      ),
    );
  }
}
