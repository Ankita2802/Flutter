import 'package:figma/Responsivee/Dashboard/Utils/my_box.dart.dart';
import 'package:figma/Responsivee/Dashboard/Utils/my_tile.dart';
import 'package:flutter/material.dart';

import 'constants/constant_drawer.dart';
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: defaultbackgroundcolor,
        appBar:myAppbar,
        drawer: myDrawer,
         body: Row(children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(children: [
           AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
                return const MyBox();
              },),
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
               return const MyTile();
            },
            )) 
          ],)),
          Expanded(child: Expanded(child: Container(color: Colors.pink,)),)
         ],)
    );
  }
}