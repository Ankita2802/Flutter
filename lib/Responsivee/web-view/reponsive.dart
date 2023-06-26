import 'package:figma/Responsivee/web-view/constant.dart';
import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final  Widget mobileview;
  final  Widget desktopview;
  const ResponsiveLayout({super.key,required this.mobileview,required this.desktopview});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < mobilewidth){
          return mobileview;
        }
        else{
          return desktopview;
        }
      },
    );
  }
}