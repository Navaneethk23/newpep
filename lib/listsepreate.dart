import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listseperater(),
    debugShowCheckedModeBanner: false,
  ));
}

class listseperater extends StatelessWidget {
  var name = ["car", "bike", "lorry", "jeep"];
  var colors = [Colors.purple, Colors.grey, Colors.cyan, Colors.red];
  var phone = ["123456", "1234567", "9876654", "234567"];
  var image = [
    "Assests/Icons/joe.jpeg",
    "Assests/Icons/ross.jpeg",
    "Assests/Icons/chander.jpeg",
    "Assests/Icons/Frog.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: colors[index],
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("${image[index]}"),
                ),
                title: Text("${name[index]}"),
                subtitle: Text("${phone[index]}"),
                trailing: Icon(Icons.call),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 5,
              color: Colors.red,
            );
          },
          itemCount: 4),
    );
  }
}
