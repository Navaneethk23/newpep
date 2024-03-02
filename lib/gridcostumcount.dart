import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:gridcustom(),
  debugShowCheckedModeBanner: false,));
}

class gridcustom extends StatelessWidget{
  var image=["Assests/Icons/chander.jpeg","Assests/Icons/joe.jpeg","Assests/Icons/ross.jpeg","Assests/Icons/Lizard.png","Assests/Icons/Frog.png"];
  var name=["chandler","joe","ross","lizard","frog"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
     title: Text("grid view custom"),backgroundColor: Colors.teal,
   ),
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         childrenDelegate: SliverChildBuilderDelegate((context,index){
           return Card(
             child: Column(
               children: [SizedBox(height: 50,),
                 Image(image: AssetImage(image[index],),height: 50,width: 50,),
                 Text("${name[index]}"),
               ],
             ),
           );
         },childCount: image.length)),
   );
  }

}