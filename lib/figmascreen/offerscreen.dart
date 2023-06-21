// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool isExpanded = false;

  void toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand Example'),
      ),
      body: GestureDetector(
        onTap: () {
          toggleExpand();
        },
        child: Center(
          child: Container(
            color: Colors.blue,
            width: isExpanded ? 300: 200.0,
            height: isExpanded ? 300 : 100.0,
            child: Center(
              child: Text(
                isExpanded ? 'Expanded' : 'Tap to Expand',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
