import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Home() ,
    useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Container(
            child: Column(
        children: [
            SizedBox(height: 50,) ,
            Text(
              "LOGIN PAGE",

              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,bottom: 10,top: 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "name",
                  labelText: "name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,bottom: 30,top: 30),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                suffixIcon:IconButton(onPressed: (){
                  setState(() {
                    if(showpass){
                      showpass=false;
                    }
                    else{
                      showpass=true;
                    }
                  });
                }, icon: Icon(showpass==true? Icons.visibility_off:Icons.visibility),),
                  hintText: "password",
                  labelText: "password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                ),
              ),
            ),
        SizedBox(height: 40,),
        ElevatedButton(onPressed:(){},child: Text("LOGIN"),),
        TextButton(onPressed: (){}, child: Text("No user found!"))

        ],

      ),
          )),
    );
  }
}
