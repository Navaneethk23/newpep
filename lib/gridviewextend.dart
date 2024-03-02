import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewextend(),
  debugShowCheckedModeBanner: false,));
}

class gridviewextend extends StatelessWidget{
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

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.extent(maxCrossAxisExtent: 120,
     children: List.generate(8, (index){
       return Card(
         child: Column(
           children: [
             Icon(icon[index]),
             Text("${name[index]}")

           ],
         ),
       );
     }),),

   );
  }

}