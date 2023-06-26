import 'package:flutter/material.dart';
class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
   final List<String> imageList=[
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Text("MOBILE"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
              itemCount:imageList.length,
              itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 120,
                    //     color: Colors.deepPurple[400],
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageList[index])
                      )
                    ),
                   ),
                 );
            },))
          ],
        ),
      ),
    );
  }
}