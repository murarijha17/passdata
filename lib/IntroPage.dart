import 'package:flutter/material.dart';
import 'package:onetoanotherscren/main.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Intro"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    backgroundColor: Colors.white),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: nameController,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(nameController.text.toString()),
                      ));
                  //Navigator.push(context, MaterialPageRoute(builder: (contet){return MyHomePage();
                  // }));
                },
                child: Text("Next"),
              )
            ],
          ),
        ));
  }
}
