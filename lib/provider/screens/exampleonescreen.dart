import 'package:figma/provider/provider_con/exaone_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Exampleone_Screen extends StatefulWidget {
  const Exampleone_Screen({super.key});

  @override
  State<Exampleone_Screen> createState() => _Exampleone_ScreenState();
}

class _Exampleone_ScreenState extends State<Exampleone_Screen> {
  // double value=1.0;
  @override
  Widget build(BuildContext context) {
     final provider=Provider.of<ExampleOneProvider>(context,listen:false);
    print("rebuild_______________");
    return Scaffold(
      appBar: AppBar(
        title: Text("Saubscribe"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(children: [
        Consumer<ExampleOneProvider>(builder: (context, value, child) {

           return Slider(
          min: 0,
          max: 1,
          value: value.value, onChanged: (val) {
            // print(value);
            value.setOpacity(val);
            // print(value);
            //  setState(() {
            //    value=val;
            //  });
        },);
        }),
        Consumer<ExampleOneProvider>(builder: (context, value, child) {
          return Row(
          children: [
             Expanded(
               child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(value.value),
                ),
                child: const Center(child: Text("Container 1")),
               ),
             ),
              Expanded(
               child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(value.value),
                ),
                child: const Center(child: Text("Container 2")),
               ),
             )
          ],
        );
        },)

      ]),
    );
  }
}