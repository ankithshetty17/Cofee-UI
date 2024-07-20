

import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData icon;
  final void Function()? ontap;
  const CustomIcons({super.key,required this.icon,required this.ontap});
 

  @override
  Widget build(BuildContext context) {  
    return GestureDetector(
      onTap: ontap,
      child:
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient:const  LinearGradient(
          colors:[Colors.black, Color.fromARGB(255, 85, 83, 83)],
          end: Alignment.topLeft,
          begin: Alignment.bottomRight)
      ),
      padding:const  EdgeInsets.all(6),
      child: Icon(icon,color: Colors.grey,),
    ),
    );
  }
}
