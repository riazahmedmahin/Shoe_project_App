import 'package:flutter/material.dart';
import 'package:shoe_project/components/shoe_tile.dart';
import 'package:shoe_project/models/shop.dart';

class Shop_page extends StatefulWidget {
  const Shop_page({super.key});

  @override
  State<Shop_page> createState() => _Shop_pageState();
}

class _Shop_pageState extends State<Shop_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
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
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){ 
            
            Shoe shoe = Shoe(
              name: "Nike",
               price: "200",
                imagepath:"images/shoe2.png", 
                description: 'nice shoe');
            return Shop_Tile(
              shoe: shoe
            );
          })
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Divider(
              color: Colors.grey[300],
            ),),

        
        ],
      ),
     
    );
  }
}