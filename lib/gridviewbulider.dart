import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: gridviewbulider(),
    debugShowCheckedModeBanner: false,));
}

class gridviewbulider extends StatelessWidget{
  var icon=[Icons.add_card,Icons.add_card,Icons.account_tree,Icons.ac_unit_rounded,Icons.accessibility_sharp,Icons.ac_unit_sharp];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:20 ),
         itemBuilder:(context,index){
       return Container(child: Icon(icon[index]),

       );
         },itemCount: icon.length,),
   );
  }

}