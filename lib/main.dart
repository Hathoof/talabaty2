import 'package:flutter/material.dart';
import 'package:talabatytask/BottomNavBar.dart';
import 'package:talabatytask/homepage/page2.dart';
import 'package:talabatytask/splashsec/logopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainNav(),
    );

  }
}
