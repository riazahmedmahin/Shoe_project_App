import 'package:flutter/material.dart';
import 'package:shoe_project/models/shop.dart';

class Shop_Tile extends StatelessWidget {
  void Function()? onTap;
  Shoe shoe;
   Shop_Tile({super.key , required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: 20),
     
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
        bottomRight: Radius.circular(25)
        )
          
      ),
      child: Column(
        children: [
          Image.asset(shoe.imagepath),
          Text(shoe.description),
          SizedBox(height: 73.8,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Column(
                children: [
                  Text(shoe.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
                  Text("\$" + shoe.price,style: TextStyle(color: Colors.black),),
                ],
              ),
            
              GestureDetector(
                onTap: onTap ,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                 color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                   bottomRight: Radius.circular(20),
                  )
                  ),
                  child: Icon(Icons.add,color: Colors.white,)
                  ),
              )
            
            ],),
          )
        ],
      ),
    );
  }
}