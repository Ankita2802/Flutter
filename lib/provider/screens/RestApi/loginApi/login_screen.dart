// import 'package:figma/provider/screens/RestApi/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../auth_provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authprovider =Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration( 
                    hintText: "Email"
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Password"
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                   authprovider.login(emailController.text.toString(), passwordController.text.toString());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(child:authprovider.isloading? const CircularProgressIndicator(color: Colors.black,):const Text("Login")),
                  ),
                )
          ]),
        ),
    );
  }
}