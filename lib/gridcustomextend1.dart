import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcustomextend(),
  debugShowCheckedModeBanner: false,));
}

class gridcustomextend extends StatelessWidget{
  var image=["Assests/Icons/chander.jpeg","Assests/Icons/joe.jpeg","Assests/Icons/ross.jpeg","Assests/Icons/Lizard.png","Assests/Icons/Frog.png"];
  var name=["chandler","joe","ross","lizard","frog"];
  var prize=["100","200","300","400","500",];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
      childrenDelegate:SliverChildListDelegate(
        List.generate(5, (index){
          return Card(child:
          Column(
            children: [
              Image(image:AssetImage(image[index],),height: 40,width: 40,),
              Text("${name[index]} ${prize[index]}")

          ],),

          );
        })
      )),
);
  }

}