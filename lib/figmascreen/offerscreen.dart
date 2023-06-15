import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
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
        title: Text('Expand Example'),
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
                style: TextStyle(
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
