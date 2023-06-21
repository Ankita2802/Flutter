import 'package:flutter/material.dart';
class NotifyListnerScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  NotifyListnerScreen({super.key});
  final ValueNotifier<int> _counter=ValueNotifier<int>(0);
  final ValueNotifier<bool> toggle=ValueNotifier<bool>(true);
  
  @override
  Widget build(BuildContext context) {
    debugPrint("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subscribe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ValueListenableBuilder(valueListenable: toggle, builder: (context, value, child) {
             return  TextFormField(
              obscureText: toggle.value,
               decoration: InputDecoration(
                hintText: 'password',
                suffix: InkWell(
                  onTap: (){
                    toggle.value =!toggle.value;
                  },
                  child: Icon(toggle.value? Icons.visibility_off_outlined:Icons.visibility))
               ),
            );
           },),
          
            Center(
              child: ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context, value, child) {
                   return Text(_counter.value.toString(),style: const TextStyle(fontSize: 50.0),);
              },)
              ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            _counter.value++;
            debugPrint(_counter.value.toString());
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}