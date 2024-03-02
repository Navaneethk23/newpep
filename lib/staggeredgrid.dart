import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: staggered(),
    debugShowCheckedModeBanner: false,
  ));
}

class staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Column(
                  children: [
                    Image(image: AssetImage("Assests/Icons/Lizard.png",),height: 35,width: 35,),
                    Text(""),
                  ],
                ),
                color: Colors.orangeAccent,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Column(
                  children: [
                    Image(image: AssetImage("Assests/Icons/Frog.png"),height: 35,width: 35,),
                    Text(""),
                  ],
                ),
                color: Colors.yellow,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Text(""),
                color: Colors.orange,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Column(
                  children: [
                    Image(image: AssetImage("Assests/Icons/chander.jpeg"),height: 35,width: 35,),
                    Text(""),
                  ],
                ),
                color: Colors.brown,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Text(""),
                color: Colors.blue,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Text(""),
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}
