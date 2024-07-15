import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData Icons;
  const CustomIcons({super.key,required this.Icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient:const  LinearGradient(
          colors:[Colors.black, Color.fromARGB(255, 85, 83, 83)],
          end: Alignment.topLeft,
          begin: Alignment.bottomRight)
      ),
      padding:const  EdgeInsets.all(6),
      child: Icon(Icons,color: Colors.grey,),
    );
  }
}