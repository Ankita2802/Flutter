import 'package:figma/fluxstore_api_with_riverpod/screens/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 10),
        () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SigninScreen(),
                ),
              ),
            });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            "https://lottie.host/47e19019-76ac-470d-bb8d-c76661020029/T41x0jg6TW.json",
            fit: BoxFit.cover),
      ),
    );
  }
}
