
import 'package:flutter/material.dart';
import 'package:shoe_project/models/shop.dart';

class Cart extends ChangeNotifier  {

  final List<Shoe> shopShop = [



    Shoe(
      name: 'Nike',
      price: '200',
      imagepath: 'images/shoe1.png', 
      description: 'A good product ',
          
    ),

     Shoe(
      name: 'Nike sports',
      price: '320',
      imagepath: 'images/shoe2.png',
       description: 'A good product '
         
    ),



     Shoe(
      name: 'Nike ',
      price: "320",
      imagepath: 'images/shoe3.png', 
      description: 'A good product '
         
    ),

     Shoe(
      name: 'Nike',
      price: '190 Tk ',
      imagepath: 'images/shoes_1.png', 
      description: 'A good product '
         
    ),

     Shoe(
      name: 'Nike',
      price: '280',
      imagepath: 'images/shoes_2.png', 
      description: 'A good product '
         
    ),

     Shoe(
      name: 'Nike',
      price: '280',
      imagepath: 'images/shoes_3.png', 
      description: 'A good product '
         
    ),
  

  
  
  ];


 //--------- user cart-----
 List<Shoe> userCart = [];

 //---------get shoe list-------
 List<Shoe>getShoeList(){
     return shopShop;
 }
 

 //---------- get user cart-----

 List<Shoe> getUserCart(){
   return userCart;
 }

 //------- add item to cart-------

 void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
 }
// remove item from cart

void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}



}