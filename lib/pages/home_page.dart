import 'package:flutter/material.dart';
import 'package:shoe_project/pages/cart_page.dart';
import 'package:shoe_project/pages/shop_page.dart';

import '../components/G_nav.dart';

class Home_Page extends StatefulWidget {
 
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

int _selectedindex=0;
void Nav_btn (int index){
  setState(() {
    _selectedindex=index;
  });
}

final List<Widget> _pages =[

Shop_page(),
Cart_page()

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Nagivation_Button(
        onTabChange: (index )=>  Nav_btn(index),
        
      ),
     appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(builder: (context)=>IconButton(
        onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu,color: Colors.black,))
      
      ),
     ),
    drawer: Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          DrawerHeader(child: Image.asset("images/nike.png",color: Colors.white,),),
          
          ListTile(
            leading: Icon(Icons.home,color: Colors.white,),
            title: Text("Home",style: TextStyle(color: Colors.white),),
          ),
          ListTile(
            leading: Icon(Icons.person,color: Colors.white,),
            title: Text("About",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    ),

      body: _pages[_selectedindex],

    );
  }
}