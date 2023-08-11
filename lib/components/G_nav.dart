import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Nagivation_Button extends StatelessWidget {
  final Function(int)? onTabChange;
  const Nagivation_Button({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black,
      padding: EdgeInsets.all(20),
      child: GNav(
        backgroundColor: Colors.black26,
      //rippleColor: Colors.grey, // tab button ripple color when pressed
      //hoverColor: Colors.yellow, // tab button hover color
      haptic: true, // haptic feedback
      tabBorderRadius: 15, 
      tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
      tabBorder: Border.all(color: Colors.white, width: 1), // tab button border
      //tabShadow: [BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 12)], // tab button shadow
      curve: Curves.easeOutExpo, // tab animation curves
      duration: Duration(milliseconds: 500), // tab animation duration
      gap: 8, // the tab button gap between icon and text 
      color: Colors.white, // unselected icon color
      activeColor: Colors.white, // selected icon and text color
      iconSize: 24, // tab button icon size
      tabBackgroundColor: Colors.white.withOpacity(0.1), // selected tab background color
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
      onTabChange: (value) => onTabChange!(value),
      tabs: [
      GButton(
        icon: Icons.home,
        text: 'Home',
      ),
      GButton(
        icon: Icons.shop,
        text: 'Cart',
      ),
      GButton(
        icon: Icons.search,
        text: 'Search',
      ),
      GButton(
        icon: Icons.person,
        text: 'Profile',
      )
      ]
    ),
    );
  }
}