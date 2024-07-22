import 'package:flutter/material.dart';

class CofeeviewText extends StatelessWidget {
  final String text;
  final bool selected;
  const CofeeviewText({super.key,required this.text,required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child:
    Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: selected?18:14,color: selected?Colors.orange:Colors.grey),
    ),
    );
  }
}