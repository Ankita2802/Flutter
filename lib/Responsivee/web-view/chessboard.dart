import 'package:flutter/material.dart';
class ChessBoard extends StatefulWidget {
  const ChessBoard({super.key});

  @override
  State<ChessBoard> createState() => _ChessBoardState();
}

class _ChessBoardState extends State<ChessBoard> {
  @override
  Widget build(BuildContext context) {
    final  screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: screenWidth/3,
                color: Colors.black,
              ),
               Container(
                height: MediaQuery.of(context).size.height/3,
                width: screenWidth/3,
                color: Colors.white,
              ),
               Container(
                height: MediaQuery.of(context).size.height/3,
                width: screenWidth/3,
                color: Colors.black,
              )
            ],),
          ),
          Row(children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.white,
            ),
             Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.black,
            ),
             Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.white,
            )
          ],),
          Row(children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.black,
            ),
             Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.white,
            ),
             Container(
              height: MediaQuery.of(context).size.height/3,
              width: screenWidth/3,
              color: Colors.black,
            )
          ],)
        ],
      ),
    );
  }
}