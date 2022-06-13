// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_bracket/auth/main_page.dart';
import 'package:e_bracket/pages/home_page.dart';
import 'package:e_bracket/pages/notification_page.dart';
import 'package:e_bracket/pages/profile_page.dart';
import 'package:e_bracket/components/navigationbar.dart';
import 'package:e_bracket/pages/wrapper_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentwidget = 1;

  // List<Widget> _widgetOptions = <Widget>[
  //   ProfilePage(),
  //   NotificationPage(),
  // ];

  // // void onTap(int index) {
  // //   setState(() {
  // //     _currentwidget = index;
  // //   });
  // // }

  // void _changeSelectedNavBar(int index) {
  //   setState(() {
  //     _currentwidget = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          // App Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, ',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Jerome Pollin',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                // profile picture
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 25),

          // Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What can we help you?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Hi Jerome'),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                //animation
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  width: 20,
                ),

                // Text
              ]),
            ),
          ),

          SizedBox(height: 50),
          // Search
          Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Create Your Own Tournament',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          SizedBox(height: 20),

          Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Your Tournament',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Color(0xFF79018C),
            child: Text('Sign Out'),
          )
        ]),
      ),
    );
  }
}
