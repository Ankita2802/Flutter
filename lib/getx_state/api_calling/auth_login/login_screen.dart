import 'package:figma/getx_state/api_calling/auth_login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({super.key});

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: loginController.emailcontroller.value,
              decoration: const InputDecoration(
                  hintText: 'Email', labelText: 'enter email'),
            ),
            TextFormField(
              controller: loginController.passwordcontroller.value,
              decoration: const InputDecoration(
                  hintText: 'Password', labelText: 'enter password'),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  loginController.loginApi();
                },
                child: loginController.loading.value
                    ? const CircularProgressIndicator()
                    : Container(
                        height: MediaQuery.of(context).size.height * .07,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
