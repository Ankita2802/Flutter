
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_con/count_provider.dart';
class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  
  final int count=0;
  @override
  void initState() {
     final countprovider=Provider.of<CounterProvider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 0), (timer) {
      countprovider.setcount();
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final countprovider=Provider.of<CounterProvider>(context,listen: false);
    debugPrint("_______________________rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider counter example"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(value.count.toString(),style: const TextStyle(fontSize: 50.0,color: Colors.blue),);
        },),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countprovider.setcount();
        },
        child: const Icon(Icons.add),
       ),
    );
  }
}