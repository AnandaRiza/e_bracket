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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(fit: StackFit.expand, children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile.jpg'),
            ),
            SizedBox(
              height: 46,
              width: 46,
            )
          ]),
        ),
      ],
    );
  }
}
