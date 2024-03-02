import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: tabbar1(),
  debugShowCheckedModeBanner: false,));
}

class tabbar1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length:3,
     child: Scaffold(
       appBar: AppBar(backgroundColor: Colors.teal,
         title: Text("Tabs Demo"),
         bottom: TabBar(indicatorColor: Colors.red,
           tabs: [Tab(
             icon: Icon(Icons.call_made),
         child: Text("call"),
         ),
       Tab(
         icon: Icon(Icons.call_missed),
         child: Text("Missed"),
       ),
             Tab(
               icon: Icon(Icons.call_received),
               child: Text("Recived"),
             ),
           ],
         ),

       ),

     ),
   );
  }

}