import 'package:flutter/material.dart';
import 'package:shoe_project/pages/home_page.dart';

class Intro_page extends StatefulWidget {
  const Intro_page({super.key});

  @override
  State<Intro_page> createState() => _Intro_pageState();
}

class _Intro_pageState extends State<Intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("images/nike.png",height: 200,),
              ),
        
            SizedBox(height: 20,),
            Text("Just Do it",style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),),
        
            SizedBox(height: 20,),
            Text("Brand new sneakers and custom kicks made with premium quality",
            style: TextStyle(color: Colors.grey,fontSize: 16,
            fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
             
            SizedBox(height: 200),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page())),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(5, 5),
                      blurRadius: 25,
                      spreadRadius: 5,
                    ),
                     BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 25,
                      spreadRadius: 5,
                    ),
                  ]
                ),
                padding: EdgeInsets.symmetric(horizontal: 130,vertical: 20),
                child: Text("Shop Now",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),),
              ),
            )
        
            ],
          ),
        ),
      ),



    );
  }
}