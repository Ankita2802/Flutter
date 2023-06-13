import 'package:figma/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Counter_Example extends StatefulWidget {
  const Counter_Example({super.key});

  @override
  State<Counter_Example> createState() => _Counter_ExampleState();
}

class _Counter_ExampleState extends State<Counter_Example> {
  @override
  int count=0;
  Widget build(BuildContext context) {
    final countprovider=Provider.of<CounterProvider>(context);
    print("_______________________rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider counter example"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Container(
              child:  Center(child: Text(countprovider.count.toString(),style: TextStyle(fontSize: 50.0,color: Colors.blue),)),
            ) 
      ]
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