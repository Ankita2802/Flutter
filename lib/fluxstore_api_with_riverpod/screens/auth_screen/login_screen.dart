import 'package:figma/fluxstore_api_with_riverpod/app.dart';
import 'package:figma/fluxstore_api_with_riverpod/components/app_button.dart';
import 'package:figma/fluxstore_api_with_riverpod/components/app_textfield.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/app_assets.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SigninScreen extends ConsumerStatefulWidget {
  const SigninScreen({super.key});

  @override
  ConsumerState<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends ConsumerState<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? password;
  String? username;
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    // final login = ref.watch(authchangeprovider);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: AppColors.liteWhite,
        ),
        title: const Text(
          'Login',
          style: TextStyle(color: AppColors.liteWhite),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appPink,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImages.loginbg,
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextformField(
                        validate: username,
                        controller: usernameController,
                        labelText: "Username",
                        errorText: '*Please enter your Username',
                        onChange: (value) {
                          usernameController.text = value;
                          if (username != null) {
                            setState(() {
                              username = null;
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      AppTextformField(
                        validate: password,
                        controller: passwordController,
                        obsecureText: hide,
                        labelText: "Password",
                        errorText: '*Please enter your passwpord',
                        textInputType: TextInputType.visiblePassword,
                        suffixIcon: IconButton(
                          icon: hide
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: AppColors.iconGrey,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: AppColors.iconGrey,
                                ),
                          onPressed: () {
                            setState(() {
                              hide = !hide;
                            });
                          },
                        ),
                        textInputAction: TextInputAction.done,
                        onChange: (value) {
                          passwordController.text = value;
                          if (password != null) {
                            setState(() {
                              password = null;
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(height: 16),
                      AppButton(
                        name: 'Login',
                        onTap: loginApicall,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginApicall() async {
    if (_formKey.currentState!.validate()) return;
    if (passwordController.text.length < 5) {
      setState(() {
        password = "Password should contain at least 5 characters";
      });
      return;
    }
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    await ref
        .read(authchangeprovider.notifier)
        .login(usernameController.text, passwordController.text)
        .then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AppDashboardscreen(),
        ),
      );
    });
  }
}
