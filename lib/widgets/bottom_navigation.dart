import 'package:cofee/pages/fav_page.dart';
import 'package:cofee/pages/home_page.dart';
import 'package:cofee/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _Selectedindex=0;
  void _onTapped(int index){
    setState(() {
      _Selectedindex=index;
    });
  }
  final List <Widget> _body=const [
    HomePage(),
    FavPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
bottomNavigationBar: BottomNavigationBar(
      currentIndex: _Selectedindex,
      elevation: 0,
      onTap: _onTapped,
      selectedIconTheme: const IconThemeData(color: Colors.orange,size: 25),
      unselectedIconTheme:const  IconThemeData(color: Colors.grey,size: 20),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
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
     body:Center(
      child:
      _body[_Selectedindex],
     ),
    );
  }
}