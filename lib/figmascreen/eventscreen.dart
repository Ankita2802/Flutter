import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text("Coming soon",style: GoogleFonts.rubik(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),)),
    );
  }
}