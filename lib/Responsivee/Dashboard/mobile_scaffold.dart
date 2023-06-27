import 'package:figma/Responsivee/Dashboard/Utils/my_box.dart.dart';
import 'package:figma/Responsivee/Dashboard/Utils/my_tile.dart';
import 'package:figma/Responsivee/Dashboard/constants/constant_drawer.dart';
import 'package:flutter/material.dart';
class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: defaultbackgroundcolor,
        appBar:myAppbar,
        drawer: myDrawer,
        body: Column(children: [
          
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
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
        ]),
      ),
    );
  }
}