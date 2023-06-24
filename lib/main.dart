import 'package:figma/provider/auth_provider.dart';
import 'package:figma/provider/provider_con/count_provider.dart';
import 'package:figma/provider/provider_con/exaone_provider.dart';
import 'package:figma/provider/provider_con/theme_provider.dart';
import 'package:figma/provider/screens/Favorite%20App/Favorite_provider.dart';
import 'package:figma/provider/screens/RestApi/get_provider.dart';
import 'package:figma/provider/utils/routes/route_name.dart';
import 'package:figma/provider/utils/routes/routes.dart';
import 'package:figma/provider/view_model/auth_view_model.dart';
// import 'package:figma/provider/screens/RestApi/loginApi/login_screen.dart';
// import 'package:figma/provider/view/loginscreen.dart';
// import 'package:figma/provider/screens/RestApi/provider/auth_provider.dart';
// import 'package:figma/provider/screens/RestApi/staless.dart';
// import 'package:figma/provider/screens/RestApi/pets_screen.dart';
// import 'package:figma/provider/screens/themechange/darktheme.dart';
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
        ChangeNotifierProvider(create: (context) => ThemeChangeProvider()),
        ChangeNotifierProvider(create: (context) => Getproductprovider(),),
        ChangeNotifierProvider(create: (context) => AuthProvider(),),
        ChangeNotifierProvider(create: (context) => AuthViewModel(),),
      ],
      //  create: (context) => CounterProvider(),
       child:Builder(builder: (BuildContext context) {
          final themeChanger =Provider.of<ThemeChangeProvider>(context);
         return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeChanger.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
         primarySwatch: Colors.purple,
         primaryColor: Colors.yellow,
         appBarTheme: const AppBarTheme(
           backgroundColor: Colors.teal,
         ),
         iconTheme: const IconThemeData(
          color: Colors.amber
         )
      ),
      initialRoute: RoutesName.signin,
      onGenerateRoute: Routes.genrateRoute,
      // home: const SigninScreen(),

      // home: BottomNavScreen(),
    );
       },)
       
    );
  }
}