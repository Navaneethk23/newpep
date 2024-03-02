import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listbulider(),
  debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,));
}

class Listbulider extends StatelessWidget{
  var title=["item 1","item 2","item 3","item 4","item 4","item 5","item 6","item 7","item 8","item 9","item 10",];
  var title1=["seperator1","seperator2","seperator3","seperator4","seperator5","seperator6","seperator7","seperator8","seperator9","seperator10"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor:Colors.black,appBar: AppBar(title: Text("ListView.sepated()"),backgroundColor: Colors.green,),
     body: ListView.separated(itemBuilder: (context,index){
       return Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),child: ListTile(
         title:Text("${title[index]}"),
       ),

       );
     }, separatorBuilder: (context,index){
       return Card( color:Colors.grey,child: Text("${title1[index]}"),
       );
     }, itemCount: title.length),
   );
  }

}