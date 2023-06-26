import 'package:flutter/material.dart';
class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({super.key});

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Text("DESKTOP"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  //YouTube Video Screen
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.deepPurple[400],
                    ),
                  ),
                  Expanded(child: ListView.builder(
                    itemCount:8 ,
                    itemBuilder: (context, index) {
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          height: 120,
                              color: Colors.deepPurple[400],
                         ),
                       );
                  },))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[400],
              ),
            )
          ],
        ),
      ),
    );
  }
}