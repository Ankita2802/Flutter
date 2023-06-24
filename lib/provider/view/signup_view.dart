import 'package:figma/provider/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/components/rounded_button.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  //  final ValueNotifier<int> _counter=ValueNotifier<int>(0);
  final ValueNotifier<bool> password=ValueNotifier<bool>(false);
  FocusNode emailFocusNode=FocusNode();
  FocusNode passwordFocusNode=FocusNode();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    password.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final services = Provider.of<AuthViewModel>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                   ValueListenableBuilder(valueListenable:password , builder:(context, value, child) {
                     return  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    focusNode: emailFocusNode,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      labelText: "Enter Your Emaill",
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.email)
                    ),
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChanger(context, emailFocusNode, passwordFocusNode);
                      // FocusScope.of(context).requestFocus();
                    },
                   );
                   },),
                   ValueListenableBuilder(valueListenable: password, builder: (context, value, child) {
                     return TextFormField(
                    controller: passwordController,
                    obscureText: password.value,
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.number,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter Your Password",
                      prefixIcon: const Icon(Icons.lock_open_outlined),
                      suffixIcon: InkWell(
                         onTap: (){
                          debugPrint("lknfkn");
                          password.value=!password.value;
                         },
                        child: Icon(password.value?Icons.visibility_off_outlined:Icons.visibility))
                    ),
                   );
                   },),
                    SizedBox(height: height* .085,),
                    RoundedButton(
                      title: "SignUp",
                      loading: services.isloading,
                      onPresse: (){
                        if(emailController.text.isEmpty){
                          Utils.snackBar("Plase enter email", context);
                        }
                        else if(passwordController.text.isEmpty){
                          Utils.snackBar("plase enter password", context);
                        }
                        else if(passwordController.text.length <6){
                          Utils.snackBar('Password must be 6 digit', context);
                        }
                        else{
                          Map data={
                             'email':emailController.text.toString(),
                             'password':passwordController.text.toString(),
                          };
                          services.signupapi(data,context);
                          // Utils.toastMessage("Login Sucessfully");
                        }
                      },
                    ),
                    SizedBox(height: height * .05,),
                    InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, RoutesName.signin);
                      },
                      child: const Text("Already have account? Login"))      
            
            ]),
        ),
      ),
    );
  }
}