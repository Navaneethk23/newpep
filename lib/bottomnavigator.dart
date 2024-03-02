import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomnavigator(),
  debugShowCheckedModeBanner: false,));
}

class bottomnavigator extends StatefulWidget{
  @override
  State<bottomnavigator> createState() => _bottomnavigatorState();
}

class _bottomnavigatorState extends State<bottomnavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("botom navigator"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon:Icon(Icons.category),label: "category"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add),label:"notification"),
      ],),
    );
  }
}