
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_con/count_provider.dart';
class Counter_Example extends StatefulWidget {
  const Counter_Example({super.key});

  @override
  State<Counter_Example> createState() => _Counter_ExampleState();
}

class _Counter_ExampleState extends State<Counter_Example> {
  @override
  int count=0;
  @override
  void initState() {
    // TODO: implement initState
     final countprovider=Provider.of<CounterProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 0), (timer) {
      countprovider.setcount();
     });
    super.initState();
  }
  Widget build(BuildContext context) {
     final countprovider=Provider.of<CounterProvider>(context,listen: false);
    print("_______________________rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider counter example"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(value.count.toString(),style: TextStyle(fontSize: 50.0,color: Colors.blue),);
        },),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countprovider.setcount();
        },
        child: Icon(Icons.add),
       ),
    );
  }
}