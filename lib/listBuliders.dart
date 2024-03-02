import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listbulider(),
  debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,));
}

class listbulider extends StatelessWidget{
  var title=["pasta","maggi","cake","pancake","pizza","burger","fries"];
  var image=["Assests/Icons/pasta.jpeg","Assests/Icons/maggi.jpeg","Assests/Icons/cakes1.jpeg","Assests/Icons/pancakes.jpeg",
  "Assests/Icons/pizza.jpeg","Assests/Icons/burger.jpeg","Assests/Icons/fries.png"];
  var time=["30mins","15mins","45mins","50mins","35mins","20mins","10mins"];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MENU BOOK"),),
      backgroundColor: Colors.blue,
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("${image[index]}"),),
            title: Text("${title[index]}",style: TextStyle(color: Colors.blue),),
            trailing: Text("${time[index]}",style: TextStyle(color: Colors.blue),),
          ),
        );
      }, itemCount: title.length,),
    );
  }

}