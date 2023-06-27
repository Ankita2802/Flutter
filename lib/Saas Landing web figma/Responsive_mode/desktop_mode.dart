import 'package:flutter/material.dart';
class MyDesktopMode extends StatefulWidget {
  const MyDesktopMode({super.key});

  @override
  State<MyDesktopMode> createState() => _MyDesktopModeState();
}

class _MyDesktopModeState extends State<MyDesktopMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
    );
  }
}