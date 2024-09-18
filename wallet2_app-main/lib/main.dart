import 'package:flutter/material.dart';
import 'package:wallet2_app/bottomnaviationbar/navBar.dart';
import 'package:wallet2_app/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
