import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
    useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,
        title: Text("APP BAR"),
      ),
      body: Container(
        child: Center(child: Center(child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("WELCOME"),
            ),
          ],
        ))),
      ),
    );
  }
}
