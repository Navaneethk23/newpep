import 'package:flutter/material.dart';
import 'package:pep/registerpage.dart';

import 'newhomepage.dart';

void main(){
  runApp(MaterialApp(home: validation(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,));
}

class validation extends StatefulWidget{
  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {
  GlobalKey<FormState>formley=GlobalKey();
  bool Show=true;
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body:Container(color:Colors.cyan,child: Form(
      key: formley,
     child: Column(
       children:[
         SizedBox(
           height: 90,
         ),
         Center(child: Image(image:AssetImage("Assests/Icons/Lizard.png"),height: 100,)),
       Padding(
         padding: const EdgeInsets.only(left: 60,right: 60,bottom: 10,top:20),
         child: TextFormField(
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.person),
             hintText: "name",
             labelText: "name",
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
           ),
           validator:(username){
             if(username!.isEmpty|| !username.contains("@")||!username.contains(".")){
               return "please enter valid detalis";
             }
             else{
               return null;
             }
           }
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(right: 60,left: 60,bottom: 20,top: 10),
         child: TextFormField(
           obscureText: Show,
           obscuringCharacter: "*",
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.password),
             suffixIcon: IconButton(onPressed: (){
               setState(() {
                 if(Show){
                   Show=false;
                 }
                 else{
                   Show=true;
                 }
               });
             },icon: Icon(Show==true? Icons.visibility_off:Icons.visibility),),
             hintText: "password",
             labelText: "password",

             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

           ),
           validator: (password){
             if(password!.isEmpty||password.length<3){
               return "please enter valid password";
             }
             else{
               return null;
             }
           }
         ),
       ),
         SizedBox(height: 60,),
         ElevatedButton(onPressed: (){
           final valid=formley.currentState!.validate();
           if(valid){

             Navigator.push(context,MaterialPageRoute(builder:(context)=>newhomepage()));
           }
         }, child:Text("login")),
         SizedBox(height:30,),
         TextButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder:(context)=>register()));
         }, child:Text("User not found!create new"))
       ],
     ),
   ),),

 );
 
  }
}