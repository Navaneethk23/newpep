import 'package:flutter/material.dart';



class call extends StatelessWidget {
  var name = ["joe", "chandler", "ross", "rachel", "monica", "phebe"];
  var email = [
    "joe@123",
    "chandler@123",
    "ross@123",
    "rachel@123",
    "monica@123",
    "phebe@123"
  ];
  var dp=["j","c","r","r","m","p"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text("${dp[index]}"),backgroundColor: Colors.teal,),
          title: Text("${name[index]}"),
          subtitle: Text("${email[index]}"),
          trailing: Icon(Icons.call),
        );
      },
      itemCount: name.length,);
  }
}
