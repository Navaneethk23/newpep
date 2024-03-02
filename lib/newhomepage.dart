import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: newhomepage(),
  debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,));
}

class newhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(children: [

      Card(color: Colors.green,
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("Assests/Icons/Frog.png"),),
          title: Text("frog"),
          subtitle: Text("12345678"),
          trailing: Icon(Icons.call),
        ),
      ),
      Card(color: Colors.cyan
        ,
        child: ListTile(
          leading: Image(image: AssetImage("Assests/Icons/Lizard.png"),),
          title:Text ("Lizard"),
          subtitle: Text("987654321"),
          trailing: Icon(Icons.call),
        ),
      )
    ],),
  );
  }

}