import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier{
  bool _isLoading=false;
  bool get isloading => _isLoading;
  void setloading(bool value){
       _isLoading=value;
       notifyListeners();
  }
  void login(String email,String password)async{
    setloading(true);
    try{
      var url="https://reqres.in/api/login";
      Response response=await http.post(Uri.parse(url),
      body: {
          "email": email.toString(),
          "password":password.toString(),
      });
      if(response.statusCode ==200){
          debugPrint("succesfully");
          setloading(false);
      }
      else{
         debugPrint("unsucessfully");
         setloading(false);
      }
    }
    catch(e){
       debugPrint(e.toString());
    }
  }
}