import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: home(),));
}

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
       CustomScrollView(
           slivers : [ 
             SliverAppBar(
               backgroundColor:Colors.cyan,
               expandedHeight: 180,
               leading: Icon(Icons.menu,color: Colors.white,),
               actions: [
                 Icon(Icons.favorite,color: Colors.white,)
               ],
               flexibleSpace:ListView(
                 children: [
             const SizedBox(height: 80,),
                   Center(child: Text("type your location",style: TextStyle(color: Colors.white,fontSize: 20),),),
                   ClipRRect(borderRadius: BorderRadius.circular(30),
                     child: Container(color: Colors.white,
                       child: TextField(cursorColor: Colors.red,
                         decoration:InputDecoration(
                           hintText: "Search",
                           prefixIcon: Icon(Icons.search),border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
       ),
             SliverToBoxAdapter(
               child: pep(),
             ),
             SliverList(delegate: SliverChildBuilderDelegate((context,index){
               return dark();
             }))
           ]),

    );
  }

 Widget pep() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Kunji(icon: Icons.hotel, title:"hotel",backgroundColors: Colors.purple,),
          SizedBox(width: 15,),
          Kunji(icon: Icons.restaurant, title:"restaurant",backgroundColors: Colors.orange,),
          SizedBox(width: 15,),
          Kunji(icon: Icons.local_cafe, title:"cafe",backgroundColors: Colors.green,)
        ],
      ),
    );
 }

  Widget dark() {
    return Container(
      
    );
  }

}

class Kunji extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color ? backgroundColors;
  
  const Kunji({
    Key? key,
    required this.icon,
    required this.title,
    this.backgroundColors,
}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  return InkWell(
    onTap: (){},
    child: Container(
      decoration: BoxDecoration(
        color: backgroundColors,
        borderRadius: const BorderRadius.all(Radius.circular(5.0))
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: Colors.white,),
          const SizedBox(height: 5,),
          Text(title,style: const TextStyle(color: Colors.white),)
        ],
      ),
    ),

  );
  }

}