import 'package:figma/provider/count_provider.dart';
import 'package:figma/provider/screens/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'figmascreen/dashboardscreen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
   initialRoute: '/',
   routes: <String,WidgetBuilder>{
    '/':(context) => const  BottomNavScreen(),
   }
  ));
}
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CounterProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Counter_Example(),
//       ),
//     );
//   }
// }