// import 'package:figma/figmascreen/homescreen.dart';
import 'package:figma/provider/utils/utils.dart';
// import 'package:figma/provider/view/homescreen.dart';
import 'package:flutter/material.dart';
class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Utils.flushBarErrorMessages("no intenet connections", context);
              // Utils.toastMessage("No Internet Connections");
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreennn()));
            },
            child: const Center(child: Icon(Icons.add)))

        ]),
    );
  }
}