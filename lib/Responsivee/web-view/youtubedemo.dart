import 'package:figma/Responsivee/web-view/desktop_body.dart';
import 'package:figma/Responsivee/web-view/mobile_body.dart';
import 'package:figma/Responsivee/web-view/reponsive.dart';
import 'package:flutter/material.dart';
class YouTubeDemo extends StatelessWidget {
  const YouTubeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        desktopview: MyDesktopBody(),
        mobileview: MyMobileBody(),
      ),
    );
  }
}