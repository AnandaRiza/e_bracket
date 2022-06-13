// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:e_bracket/auth/main_page.dart';
// import 'package:e_bracket/pages/home_page.dart';
// import 'package:e_bracket/pages/notification_page.dart';
// import 'package:e_bracket/pages/profile_page.dart';

// class bot_navbar extends StatefulWidget {
//   bot_navbar({Key? key}) : super(key: key);

//   @override
//   State<bot_navbar> createState() => _bot_navbarState();
// }

// class _bot_navbarState extends State<bot_navbar> {
//   int _currentwidget = 1;

//   List pages = [
//     HomePage(),
//     ProfilePage(),
//     NotificationPage(),
//   ];

//   void onTap(int index) {
//     setState(() {
//       _currentwidget = index;
//     });
//   }

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _currentwidget = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_currentwidget],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentwidget,
//         backgroundColor: Color(0xFF79018C),
//         selectedItemColor: Color.fromRGBO(250, 88, 184, 100),
//         onTap: (int index) => _changeSelectedNavBar(index),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notification',
//             backgroundColor: Color(0xFF79018C),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Color(0xFF79018C),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Color(0xFF79018C),
//           ),
//         ],
//       ),
//     );
//   }
// }
