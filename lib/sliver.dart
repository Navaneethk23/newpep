import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: silvers(),
  debugShowCheckedModeBanner: false,));
}

class silvers extends StatelessWidget{
  var color=[800,700,600,500,400];
  var name=["joe","chandler","ross","rachel","monica"];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: CustomScrollView(
   slivers: [
     SliverAppBar(
       floating: false,
       pinned: false,
       title: const Text("Custom AppBar"),
       actions: [
         IconButton(onPressed: (){},
             icon: const Icon(Icons.shopping_cart)),
         IconButton(onPressed: (){},
             icon:const Icon(Icons.favorite)),
       ],
       bottom: AppBar(
         elevation: 0,
         title: Container(
           height: 40,
           width: double.infinity,
           color: Colors.white,
           child: const TextField(
             decoration: InputDecoration(
               hintText: "search Something",
               prefixIcon: Icon(Icons.search),
               suffixIcon: Icon(Icons.camera_alt),

             ),
           ),
         ),
       ),
     ),
     SliverList(delegate: SliverChildBuilderDelegate((context, index){
       return Card(color: Colors.blue[color[index]],
     child: Container(height: 80,
     child: Text("${name[index]}"),
       ),
       );

     },childCount: color.length))
   ],
  ),
);
  }

}