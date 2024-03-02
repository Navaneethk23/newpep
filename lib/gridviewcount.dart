import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcount(),
  debugShowCheckedModeBanner: false,));
}
class gridcount extends StatelessWidget{
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
      body: GridView.count(crossAxisCount: 3,
        children:List.generate(8, (index){
          return Card(color: colors[index],
            child: Column(
              children: [SizedBox(height:50,),
                Icon(icon[index]),
                Text("${name[index]}"),
              ],
            ),

          );
        }),),
    );
  }

}