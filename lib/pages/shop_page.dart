import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_project/components/shoe_tile.dart';
import 'package:shoe_project/models/shoe_shop.dart';
import 'package:shoe_project/models/shop.dart';

class Shop_page extends StatefulWidget {
  const Shop_page({super.key});

  @override
  State<Shop_page> createState() => _Shop_pageState();
}

class _Shop_pageState extends State<Shop_page> {


  void addShoeToCart(Shoe shoe ){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text("Successfully added to card"),
        content: Text("Check your cart"),
      )
      );
  }


  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context , value , child)=>  Column(
          children: [
            SizedBox(height: 10,),
            Container(
              
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
    
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search",style: TextStyle(color: Colors.grey),),
    
                  Icon(Icons.search,color: Colors.grey,),
                ],
              ),
            ),
          SizedBox(height: 12,),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Shopping ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Text("see all",style: TextStyle(color: Colors.blue),)
                ],
              ),
        ),
    
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){ 
              
              Shoe shoe =value.getShoeList()[index] ;
              return Shop_Tile(
                shoe: shoe,
                 onTap: ()=> addShoeToCart(shoe) ,
              );
            })
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Divider(
                color: Colors.grey[300],
              ),),
    
          
          ],
        )
    
      );
    

    
  }
}