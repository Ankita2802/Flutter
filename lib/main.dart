import 'package:figma/provider/provider_con/count_provider.dart';
import 'package:figma/provider/provider_con/exaone_provider.dart';
import 'package:figma/provider/screens/Favorite%20App/Favorite_provider.dart';
import 'package:figma/provider/screens/Favorite%20App/favourite_screen.dart';
import 'package:figma/provider/screens/RestApi/get_provider.dart';
import 'package:figma/provider/screens/RestApi/pets_screen.dart';
import 'package:figma/provider/screens/counter.dart';
import 'package:figma/provider/screens/exampleonescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider(),),
        ChangeNotifierProvider(create: (context) => ExampleOneProvider(),),
        ChangeNotifierProvider(create: (context) => FavoriteListProvider(),),
        ChangeNotifierProvider(create: (context) => Getproductprovider(),)
      ],
      //  create: (context) => CounterProvider(),
       child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const  PetsScreen(),

      // home: BottomNavScreen(),
    )
       
    );
  }
}