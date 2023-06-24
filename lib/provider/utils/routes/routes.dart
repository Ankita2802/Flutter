// import 'package:figma/figmascreen/homescreen.dart';
// import 'package:figma/provider/screens/RestApi/loginApi/login_screen.dart';
// import 'package:figma/provider/screens/RestApi/loginApi/login_screen.dart';
import 'package:figma/provider/utils/routes/route_name.dart';
import 'package:figma/provider/view/signup_view.dart';
import 'package:flutter/material.dart';
import '../../view/homescreen.dart';
import '../../view/login_view.dart';

class Routes{
  static Route<dynamic>  genrateRoute(RouteSettings settings){
    // final argume=settings.arguments;
    switch(settings.name){
      case RoutesName.signin:
         return MaterialPageRoute(builder: (context) => const LoginView(),);
       case RoutesName.home:
         return MaterialPageRoute(builder: (context) => const HomeScreennn(),);
      case RoutesName.signup:
         return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
         return MaterialPageRoute(builder: (_){
           return const Scaffold(
            body: Center(child: Text("No Routes Definied")),
           );

         });
      
    }
  }
}