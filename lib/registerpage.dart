import 'package:flutter/material.dart';
import 'package:pep/validation.dart';
void main(){
  runApp(MaterialApp(home: register(),
  debugShowCheckedModeBanner: false,));
}
class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  GlobalKey<FormState>formley = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(color: Colors.grey,
        child: Form(
          key: formley,
          child: Column(
            children: [
            SizedBox(height: 20,),
          Text("REGISTRATION PAGE"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "name",
                  labelText: "name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                validator: (username) {
                  if (username!.isEmpty || !username.contains(".")) {
                    return "please enter valid user name";
                  }
                  else {
                    return null;
                  }
                }

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "EmailId",
                    labelText: "EmailId",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))
                ),
                validator: (emailid) {
                  if (emailid!.isEmpty || !emailid.contains("@") ||
                      !emailid.contains(".")) {
                    return "please enter a valid emailId";
                  }
                  else {
                    return null;
                  }
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))
                ), validator: (password) {
              if (password!.isEmpty || password.length < 5) {
                return "please enter a valid password";
              }
              else {
                return null;
              }
            }
            ),
          ),
              ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>validation()));
              }, child: Text("CREATE ACCOUNT")),

            ],
          ),
        ),
      )),
    );
  }
}