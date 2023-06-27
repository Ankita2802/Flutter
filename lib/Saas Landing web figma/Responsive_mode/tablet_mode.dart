import 'package:figma/Saas%20Landing%20web%20figma/Utills/ContainerAll/container1.dart';
import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';
class MyTabletMode extends StatefulWidget {
  const MyTabletMode({super.key});

  @override
  State<MyTabletMode> createState() => _MyTabletModeState();
}

class _MyTabletModeState extends State<MyTabletMode> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            color: Colors.white,
            child: const NavBarButton()
            ),
            const Container1(),
         ],
       ),
     ),
    );
  }
}