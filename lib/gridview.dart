import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:gridview(),
  debugShowCheckedModeBanner: false,));
}

class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
       children: [
         Container(child: Icon(Icons.construction),color: Colors.cyan,),
    Container(child: Icon(Icons.ac_unit_rounded),color:Colors.red),
    Container(child: Icon(Icons.accessibility_rounded),color:Colors.blue),
    Container(child: Icon(Icons.account_tree),color: Colors.green,),
    Container(child: Icon(Icons.add_card),color:Colors.yellow),
    Container(child: Icon(Icons.add_photo_alternate),color:Colors.purple),
    Container(child: Icon(Icons.adb),color:Colors.orangeAccent),

    ],
      ),
    );

  }

}