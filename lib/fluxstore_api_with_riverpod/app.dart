import 'package:figma/fluxstore_api_with_riverpod/screens/home/cart_screen.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/home/product_screen.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/home/home_screen.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/home/like_scree.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';

class AppDashboardscreen extends StatefulWidget {
  const AppDashboardscreen({super.key});

  @override
  State<AppDashboardscreen> createState() => _AppDashboardscreenState();
}

class _AppDashboardscreenState extends State<AppDashboardscreen> {
  int _currentindex = 0;
  List pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const LikeScreen(),
    const CartScreen(),
  ];
  void _onTapped(index) {
    setState(() {
      _currentindex = index;
    });
  }

  bool isLoading = true;
  initpref() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.liteWhite,
        currentIndex: _currentindex,
        iconSize: 30.0,
        selectedItemColor: AppColors.purple,
        unselectedItemColor: AppColors.grey1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: AppColors.liteWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
            backgroundColor: AppColors.liteWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Like",
            backgroundColor: AppColors.liteWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shopping Cart",
            backgroundColor: AppColors.liteWhite,
          ),
        ],
        onTap: _onTapped,
      ),
      body: pages.elementAt(_currentindex),
    );
  }
}
