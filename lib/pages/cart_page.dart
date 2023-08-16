import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_project/models/shoe_shop.dart';

import '../components/cart_item.dart';
import '../models/shop.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({super.key});

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context , value , index )=>
    Padding(padding: EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My cart",style: TextStyle(fontSize: 26),
        ),
        SizedBox(height: 20,),
        Expanded(child: ListView.builder(
          itemCount: value.getUserCart().length,
          itemBuilder: (context,index){

          Shoe individual = value.getUserCart()[index];

          return CartItem(shoe: individual,);

          }))
      ],
    ),
    
    )
    );
  }
}