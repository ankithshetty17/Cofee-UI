import 'package:cofee/models/product.dart';
import 'package:flutter/material.dart';

class CofeeView extends StatelessWidget {
  final Product product;
  const CofeeView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color:const Color.fromARGB(255, 41, 41, 41),
      ),
      margin:const  EdgeInsets.symmetric(horizontal: 6),
      padding:const EdgeInsets.all(10),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    product.imagepath,
                    height: 170,
                    width: 210,
                    fit: BoxFit.cover,
                  ),
                ),
            
              const   SizedBox(height: 10),
                Text(
                  product.title,
                  style:const  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
             const    SizedBox(height: 5),
                Text(
                  product.subtitle,
                  style:const  TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
             
            ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children:[
            const   Text(
                "\$",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.orange
                ),
              ),
             const  SizedBox(width: 3,),
               Text(
                product.price,
                style:const  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.orange
                ),
              ),
              ],),
            
             ElevatedButton(onPressed: (){},
              child: Icon(Icons.add,color: Colors.white,size: 20,),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                primary: Colors.orange,
                minimumSize: const Size(20,40)
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
