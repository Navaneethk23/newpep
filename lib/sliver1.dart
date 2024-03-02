import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: sliver1(),
  debugShowCheckedModeBanner: false,));
}

class sliver1 extends StatelessWidget{
  var color=[Colors.white,Colors.red];
  var name=["This is an awesome platform",""];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: false,
          pinned: true,
          title: const Text("CustomApp.com"),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
          ],
          bottom: AppBar(
            elevation: 0,
            title: Container(
              height:30,
              width: double.infinity,
              color: Colors.white,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search something",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt),

                ),
              ),
            ),

          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index){
          return Card(color:color[index],
          child: Container(height: 500,
          child: Center(child: Text("${name[index]}")),),);
        },childCount: color.length))
      ],
    ),
  );
  }
  
}