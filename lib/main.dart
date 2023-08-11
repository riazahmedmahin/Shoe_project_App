import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_project/pages/intropage.dart';

import 'models/shoe_shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe shop',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Intro_page(),
    ));
    
  }
}

