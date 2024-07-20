import 'package:cofee/widgets/bottom_navigation.dart';
import 'package:cofee/widgets/colours.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (_)=>const BottomNavigator()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
      children:[
     Container(
      constraints: const BoxConstraints.expand(),
      child: Image.asset('assets/images/cofeebg.jpeg',fit: BoxFit.cover,),
     ),
     SafeArea(child:
     Align(
      alignment: Alignment.topCenter,
      child:Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2),
      child:
      Column(
        children:[
      const  Text('CafeSip',
      style: TextStyle(fontFamily: 'Playwrite', fontSize: 50,),
      ),
      const SizedBox(height: 2),
       Text('Buy The Best Cofee From Us',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: txtcol),
      ),
        ],
      ),
      ),
     ),
     ),
      ],
      
      ),
  
    );
  }
}