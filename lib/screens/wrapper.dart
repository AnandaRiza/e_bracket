import 'package:e_bracket/screens/authenticate/authenticate.dart';
import 'package:e_bracket/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // The user is not logged in

    return Authenticate();
  }
}
