import 'package:flutter/material.dart';
import 'package:pep/registerpage.dart';
import 'package:pep/staggeredgrid.dart';

import 'gridcostumcount.dart';
void main(){
  runApp(MaterialApp(home: loginPage(),
  debugShowCheckedModeBanner: false,));
}

class loginPage extends StatefulWidget{

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  GlobalKey<FormState>globa=GlobalKey();
  bool show=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(color: Colors.orangeAccent,child: Form(
  key: globa,
  child: Column(
    children: [
      SizedBox(height: 90,),
      Center(child: Image(image: AssetImage("Assests/Icons/Frog.png"),height: 100,),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60,right: 60,top: 10,bottom: 20),
        child: TextFormField(
          decoration: InputDecoration(
            prefix: Icon(Icons.person),
            hintText: "name",
            labelText: "name",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)
          ),
          validator: (username){
            if(username!.isEmpty||!username.contains("@")||!username.contains(".")){
              return"please enter valid details";
            }
            else{
              return null;
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60,right: 60,top: 20,bottom: 10),
        child: TextFormField(
          obscureText: show,
          obscuringCharacter: "*",
          decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(onPressed: (){setState(() {
              if(show){
                show=false;
              }
              else{
                show=true;
              }

            });}, icon: Icon(show==true?Icons.visibility_off:Icons.visibility),),
          hintText: "password",
          labelText: "password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))

          ),

        ),
      ),
      ElevatedButton(onPressed: (){
        final valid=globa.currentState!.validate();
      if(valid){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>staggered()));
      }
      }, child: Text("LOGIN"),),
      TextButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> register()));
      }, child:Text("create a new account"))
    ],
  ),
),),

    );
  }
}