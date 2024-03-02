import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridview1(),
  debugShowCheckedModeBanner: false,));
}

class gridview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
     children: [
       Container(child: Column(children: [
         Image(image: AssetImage("Assests/Icons/house.png")),
         Text("home"),


       ],

       )
       ),
       Container(child: Column(children: [
         Image(image: AssetImage("Assests/Icons/chander.jpeg")),
         Text("boy"),
       ],),)
     ],),
   );

  }

}