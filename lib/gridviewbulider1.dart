import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewbulider1(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridviewbulider1 extends StatelessWidget {
  var icon = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note
  ];
  var name = [
    "home",
    "emails",
    "alarm",
    "wallet",
    "backup",
    "book",
    "camera",
    "person",
    "print",
    "phone",
    "notes",
    "music"
  ];
  var colors = [
    Colors.grey,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.cyan,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.limeAccent,
    Colors.brown,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Grid View"),
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 0, crossAxisSpacing: 0),
        itemBuilder: (context, index) {
          return Card(color: colors[index],
            child: Column(
              children: [
                Icon(icon[index]),

                Text("${name[index]}"),
              ],
            ),

          );
        },
        itemCount: colors.length,
      ),
    );
  }
}
