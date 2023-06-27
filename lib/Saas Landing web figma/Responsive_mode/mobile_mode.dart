import 'package:figma/Saas%20Landing%20web%20figma/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

import '../Utills/ContainerAll/container1.dart';
import '../Utills/constant.dart';
class MyMobileMode extends StatefulWidget {
  const MyMobileMode({super.key});

  @override
  State<MyMobileMode> createState() => _MyMobileModeState();
}

class _MyMobileModeState extends State<MyMobileMode> {
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
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