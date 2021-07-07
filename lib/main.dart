import 'package:flutter/material.dart';
import 'package:vizeodevi/homepage.dart';
import 'package:vizeodevi/loginpage.dart';
import 'package:vizeodevi/profilepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieTEo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loginpage(),
    );
  }
}

