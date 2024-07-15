import 'package:cofee/widgets/custom_icon.dart';
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: 
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
        CustomIcons(Icons: Icons.widgets),
      
           
           CustomIcons(Icons: Icons.person)
           
        ],
      ),
      ),
     bottomNavigationBar: BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: Colors.orange,size: 30),
      unselectedIconTheme:const  IconThemeData(color: Colors.grey,size: 20),
      items:const  [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          label:''
          
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
           label:''
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label:''
        ),
      ]
     ),
     body:const SafeArea(child:
      Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child:Text('FIND THE BEST COFEE FOR YOURSELF.',
        style: TextStyle(
          fontFamily: 'Bebas',
          fontSize: 40,
        )
        ),
        ),
        SizedBox(height: 25,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 25),
        child:
        TextField(
          decoration: InputDecoration( 
            contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 10),
            filled: true,
            fillColor: Color.fromARGB(255, 83, 83, 83),
            hintText: 'Search For Your Cofee...',
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
               borderSide: BorderSide(color: Colors.transparent),
            ),
            
          ),
        ),
        ),
      ],
     ),
    ),
    );
  }
}