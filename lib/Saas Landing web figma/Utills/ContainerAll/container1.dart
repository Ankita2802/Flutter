import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Track your \n Expenses to \n Save Money",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                      fontSize: 50),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
              ],
            ),
          )
        ]);
  }
}
