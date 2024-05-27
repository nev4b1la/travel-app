import 'package:flutter/material.dart';
import 'package:travel/pages/accountPage.dart';
import 'package:travel/pages/gallery.dart';
import 'package:travel/pages/homePage.dart';
import 'package:travel/pages/information.dart';
import 'package:travel/pages/landingpage.dart';
import 'package:travel/pages/login.dart';
import 'package:travel/pages/notifPage.dart';
import 'package:travel/pages/register.dart';
import 'package:travel/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelTix App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}
