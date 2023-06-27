import 'package:flutter/material.dart';

import '../Utills/ContainerAll/container1.dart';
import '../widgets/nav_bar.dart';
class MyDesktopMode extends StatefulWidget {
  const MyDesktopMode({super.key});

  @override
  State<MyDesktopMode> createState() => _MyDesktopModeState();
}

class _MyDesktopModeState extends State<MyDesktopMode> {
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