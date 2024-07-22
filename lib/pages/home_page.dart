import 'package:cofee/models/product.dart';
import 'package:cofee/widgets/cofee_view.dart';
import 'package:cofee/widgets/cofeeview_text.dart';
import 'package:cofee/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products=[
    Product(
            imagepath: 'assets/images/capccino.jpeg', 
            title: 'Cappucino Latte', 
            subtitle: 'WithOat Milk', 
            price: '4.30', 
            rating: 4.1
            ),
    Product(
            imagepath:'assets/images/capccino.jpeg',
            title: 'Cappucino Latte', 
            subtitle: 'WithOat Milk', 
            price: '4.30', 
            rating: 4.1
            ),
    Product(
            imagepath: 'assets/images/capccino.jpeg', 
             title: 'Cappucino Latte',
            subtitle: 'WithOat Milk', 
            price: '4.30', 
            rating: 4.1
            ),
     Product(
            imagepath:'assets/images/capccino.jpeg',
            title: 'Cappucino Latte', 
            subtitle: 'WithOat Milk', 
            price: '4.30',  
            rating: 4.1
            ),
  ];
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
        CustomIcons(icon: Icons.widgets,ontap: null,),
           CustomIcons(icon:Icons.person,ontap: null,)
           
        ],
      ),
      ),
     
     body: SafeArea(child:
      Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child:Text('FIND THE BEST COFEE FOR YOU.',
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
          style: TextStyle(color: Color.fromARGB(255, 224, 222, 222),fontWeight: FontWeight.bold),
          decoration: InputDecoration( 
            contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 10),
            filled: true,
            fillColor: Color.fromARGB(255, 83, 83, 83),
            hintText: 'Search For Your Cofee...',
            hintStyle: TextStyle(fontWeight: FontWeight.normal),
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
        SizedBox(height: 25,),
        Container(
          height: 30,
          child:
        ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CofeeviewText(text: 'Cappucino',selected: true,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
          CofeeviewText(text: 'Cappucino',selected: false,),
        ],
        ),
        ),
         SizedBox(height: 25),
        SizedBox(height:310,
        child:Padding(padding: EdgeInsets.symmetric(horizontal:8),
        child:
       Expanded(
        child: 
       ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (BuildContext,index){
          final Product=products[index];
       return CofeeView(product: Product);
       }
       )
       ),
        ),
        ),
      ],
     ),
    ),
    );
  }
}