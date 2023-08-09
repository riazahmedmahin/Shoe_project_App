import 'package:flutter/material.dart';
import 'package:shoe_project/models/shop.dart';

class Shop_Tile extends StatelessWidget {
  Shoe shoe;
   Shop_Tile({super.key , required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: 12),
     
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Image.asset(shoe.imagepath),
          Text(shoe.description),
          SizedBox(height: 65,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(
                children: [
                  Text(shoe.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
                  Text("\$" + shoe.price,style: TextStyle(color: Colors.black),),
                ],
              ),
            
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
               color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                 bottomRight: Radius.circular(12),
                )
                ),
                child: Icon(Icons.add,color: Colors.white,)
                )
            
            ],),
          )
        ],
      ),
    );
  }
}