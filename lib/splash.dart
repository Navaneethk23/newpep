import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPLASH"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://images.pexels.com/photos/413195/pexels-photo-413195.jpeg?auto=compress&cs=tinysrgb&w=600"),) ),
          child: Column(
            children: [
              Image(image: AssetImage("Assests/Icons/Frog.png")),
              Text(
                "frogMan",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
