import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onetoanotherscren/IntroPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //splash screen not appbar
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
          "Classico",
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w100,
              color: Colors.white,
              fontFamily: 'FontMain'),
        )),
      ),
    );
  }
}
