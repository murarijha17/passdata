import 'package:flutter/material.dart';
import 'package:onetoanotherscren/IntroPage.dart';
import 'package:onetoanotherscren/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var nameFromHome;
  MyHomePage(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("hello"),
      ),
      body: Container(
        child: Text(
          "Hello world,$nameFromHome",
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
      ),
    );
  }
}
