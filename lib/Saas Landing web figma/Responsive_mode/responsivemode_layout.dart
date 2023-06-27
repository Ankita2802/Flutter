import 'package:flutter/material.dart';
class MyResponsiveLayout extends StatelessWidget {
  final Widget mobileMode;
  final Widget tabletMode;
  final Widget desktopMode;
  const MyResponsiveLayout({super.key,required this.mobileMode,required this.tabletMode,required this.desktopMode});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600){
          return mobileMode;
        }
        else if(constraints.maxWidth < 1100){
          return tabletMode;
        }
        else{
          return desktopMode;
        }
      },
    );
  }
}