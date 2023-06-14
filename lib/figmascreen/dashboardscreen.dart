import 'package:figma/figmascreen/homescreen.dart';
import 'package:figma/figmascreen/playwinscreen.dart';
import 'package:flutter/material.dart';

import 'explorescreen.dart';
import 'morescreen.dart';
import 'offerscreen.dart';
class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  bool loading = true;

 int _currentindex=0;
  List Pages=[
    HomeScreen(),
    ExploreScreen(),
    PlaywinScreen(),
     OfferScreen(),
    MoreScreen(),
  
  ];
  void _onTapped(index){
    setState(() {
      _currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        iconSize: 20.0,
        selectedItemColor: Color(0xffFFA500),
        unselectedItemColor: Colors.black,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Like",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
       onTap: _onTapped,
      ),
      body:Pages.elementAt(_currentindex) ,
    );
  }
}
