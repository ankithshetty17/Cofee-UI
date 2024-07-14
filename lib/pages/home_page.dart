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
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
           Padding(padding: EdgeInsets.only(right: 12),
           child:
           Icon(Icons.person)
           ),
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
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
     body: Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child:Text('FIND THE BEST COFEE FOR YOURSELF',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
        )
        ),
        ),
      ],
     ),
    );
  }
}