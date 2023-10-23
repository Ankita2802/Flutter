// import 'package:figma/Responsivee/web-view/youtubedemo.dart';
// import 'package:figma/Responsivee/Dashboard/desktop_scaffold.dart';
// import 'package:figma/Responsivee/Dashboard/mobile_scaffold.dart';
// import 'package:figma/Saas%20Landing%20web%20figma/Utills/colors.dart';
// import 'package:figma/Responsivee/web-view/reponsive.dart';
// import 'package:figma/provider/auth_provider.dart';
// import 'package:figma/provider/provider_con/count_provider.dart';
// import 'package:figma/provider/provider_con/exaone_provider.dart';
// import 'package:figma/provider/provider_con/theme_provider.dart';
// import 'package:figma/provider/screens/Favorite%20App/Favorite_provider.dart';
// import 'package:figma/provider/screens/RestApi/get_provider.dart';
// import 'package:figma/provider/utils/routes/route_name.dart';
// import 'package:figma/provider/utils/routes/routes.dart';
// import 'package:figma/provider/view_model/auth_view_model.dart';
// import 'package:figma/provider/screens/RestApi/loginApi/login_screen.dart';
// import 'package:figma/provider/view/loginscreen.dart';
// import 'package:figma/provider/screens/RestApi/provider/auth_provider.dart';
// import 'package:figma/provider/screens/RestApi/staless.dart';
// import 'package:figma/provider/screens/RestApi/pets_screen.dart';
// import 'package:figma/provider/screens/themechange/darktheme.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/route_manager.dart';
// import 'package:provider/provider.dart';
// import 'Responsivee/Dashboard/responsive_layout.dart';
// import 'Responsivee/Dashboard/tablet_scaffold.dart';
// import 'Responsivee/web-view/youtubedemo.dart';
// import 'Responsivee/web-view/mobile_body.dart';
// import 'Responsivee/web-view/chessboard.dart';

import 'package:figma/getx_state/get%20traslated/languages.dart';
import 'package:figma/getx_state/home_screen.dart';
import 'package:figma/getx_state/screens/screen_one.dart';
import 'package:figma/getx_state/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyAppGet());
}
// // this comment for provider response screen
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => CounterProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => ExampleOneProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => FavoriteListProvider(),
//         ),
//         ChangeNotifierProvider(create: (context) => ThemeChangeProvider()),
//         ChangeNotifierProvider(
//           create: (context) => Getproductprovider(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => AuthProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => AuthViewModel(),
//         ),
//       ],
//       //  create: (context) => CounterProvider(),
//       child: Builder(
//         builder: (BuildContext context) {
//           final themeChanger = Provider.of<ThemeChangeProvider>(context);
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Xpense',
//             themeMode: themeChanger.themeMode,
//             theme: ThemeData(
//               fontFamily: 'HindSiliguri',
//               brightness: Brightness.light,
//               primarySwatch: Colors.red,
//               primaryColor: AppColors.Primary,
//             ),
//             darkTheme: ThemeData(
//                 brightness: Brightness.dark,
//                 primarySwatch: Colors.purple,
//                 primaryColor: Colors.yellow,
//                 appBarTheme: const AppBarTheme(
//                   backgroundColor: Colors.teal,
//                 ),
//                 iconTheme: const IconThemeData(color: Colors.amber)),
//             // initialRoute: RoutesName.signin,
//             // onGenerateRoute: Routes.genrateRoute,
//             // home: const ResponsiveLayoutdemo(
//             //   mobileScaffold: MobileScaffold(),
//             //   tabletScaffold: TabletScaffold(),
//             //   desktopScaffold: DesktopScaffold(),
//             // ),
//             // home: const MyResponsiveLayout(
//             //   mobileMode: MyMobileMode(),
//             //   tabletMode: MyTabletMode(),
//             //   desktopMode: MyDesktopMode(),
//             // ),

//             // home: BottomNavScreen(),
//           );
//         },
//       ),
//     );
//   }
// }

// this comment for getx state management
class MyAppGet extends StatelessWidget {
  const MyAppGet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        primaryColor: Colors.yellow,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      home: const HomeScreenget(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreenget(),
        ),
        GetPage(
          name: '/screenone',
          page: () => Screenone(),
        ),
        GetPage(
          name: '/screentwo',
          page: () => const SecondScreen(),
        ),
      ],
    );
  }
}
