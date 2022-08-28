import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talabatytask/homepage/page2.dart';

class splash extends StatefulWidget {

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
    MaterialPageRoute(builder: (context)=> homepage()));
  }
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => homepage())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4323d),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("images/talabatylogo.jpg"),
        ),
      ),
    );
  }
}
