import 'package:figma/provider/repositry/auth_repositry.dart';
import 'package:figma/provider/utils/utils.dart';
import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier{
  final myrepo=AuthRepositry();
  bool _isLoading=false;
  bool get isloading => _isLoading;
  bool _signupLoading =false;
  bool get signuoLoading => _signupLoading;

  void setloading(bool value){
       _isLoading=value;
       notifyListeners();
  }
   void setsignuploading(bool value){
       _signupLoading=value;
       notifyListeners();
  }
  Future<void> loginapi(dynamic data,BuildContext context)async{
    setloading(true);
     myrepo.loginApi(data).then((value){
      setloading(false);
      Utils.flushBarErrorMessages('Login Sucessfully',context);
      debugPrint(value.toString());

     }).onError((error, stackTrace) {
        setloading(false);
        Utils.flushBarErrorMessages(error.toString(),context);
        debugPrint(error.toString());
     });

  }
   Future<void> signupapi(dynamic data,BuildContext context)async{
    setsignuploading(true);
     myrepo.signuppi(data).then((value){
      setloading(false);
      Utils.flushBarErrorMessages('SignUp Sucessfully',context);
      debugPrint(value.toString());

     }).onError((error, stackTrace) {
        setsignuploading(false);
        Utils.flushBarErrorMessages(error.toString(),context);
        debugPrint(error.toString());
     });

  }
}