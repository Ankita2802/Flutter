import 'package:flutter/material.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(height: MediaQuery.of(context).size.height*0.5),
           Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
           )
        ]),
      ),
    );
  }
}