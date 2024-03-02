import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawereg(),
    debugShowCheckedModeBanner: false,
  ));
}

class drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Assests/Icons/red_back.jpg"),
                      fit: BoxFit.fill)),
              accountName: Text("navaneeth"),
              accountEmail: Text("navaneeth@gamil.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("Assests/Icons/chander.jpeg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("Assests/Icons/Frog.png"),
                ),
              ],
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text("HOME"),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("update"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
