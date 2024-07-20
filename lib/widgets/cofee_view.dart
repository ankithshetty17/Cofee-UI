import 'package:cofee/models/product.dart';
import 'package:flutter/material.dart';


class CofeeView extends StatelessWidget {
  final Product product;
  const CofeeView({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(255, 83, 83, 83),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
     child: 
     Column(
     
    
      children: [
          Expanded(child:
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        
          children:[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child:
        Image.asset(product.imagepath,height: 170,width: 180,fit: BoxFit.cover,),),
        SizedBox(height: 10),
        Text(product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
         SizedBox(height: 5),
        Text(product.subtitle,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),),
          ],
        ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(product.price),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.add),
          ),
          )
          ],
        )
      ],
     ),
    );
  }
}