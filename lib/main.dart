import 'package:ecommerce_pro/profile%20screen.dart';
import 'package:ecommerce_pro/side%20bar.dart';
import 'package:ecommerce_pro/signup_screen.dart';
import 'package:ecommerce_pro/view%20cart%20screen2.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(
      ),
    );
  }
}
