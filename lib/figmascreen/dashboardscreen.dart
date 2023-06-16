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
  // ignore: non_constant_identifier_names
  List Pages=[
    const HomeScreen(),
    const ExploreScreen(),
    const PlaywinScreen(),
     MyPage(),
     const MoreScreen (),
  
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
        backgroundColor: Colors.black,
        currentIndex: _currentindex,
        iconSize: 30.0,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.white,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
          // icon: Image(image: AssetImage("assets/Vector (3).png"),height: 20,width: 20,fit: BoxFit.cover,),
          icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,  
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/explore (1).png"),
            label: "Explore",
             backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
             icon: Image.asset("assets/icons/Vector (5).png"),
            label: "Play & Win",
             backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
             icon: Image.asset("assets/icons/Knockoff.png"),
            label: "Offers",
             backgroundColor: Colors.black,
          ),
            BottomNavigationBarItem(
             icon: Image.asset("assets/icons/More.png"),
            label: "More",
             backgroundColor: Colors.black,
          ),
        ],
       onTap: _onTapped,
      ),
      body:Pages.elementAt(_currentindex) ,
    );
  }
}
