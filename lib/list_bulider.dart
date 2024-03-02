import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listbuilder(),
  debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,));
}
class listbuilder extends StatelessWidget{
  var title=["joe","chandler","ross"];
  var phone=["12345","67890","345678"];
  var image=["Assests/Icons/joe.jpeg","Assests/Icons/chander.jpeg","Assests/Icons/ross.jpeg"];
  var colors=[Colors.red,Colors.green,Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LISTBULIDERS"),
      backgroundColor: Colors.black,),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: colors[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
            title: Text("${title[index]}"),
            subtitle: Text("${phone[index]}"),
            trailing: Icon(Icons.call),
          ),
        );
      },itemCount:title.length,),
    );

  }

}