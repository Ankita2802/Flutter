import 'dart:convert';

import 'package:figma/provider/screens/RestApi/models/PetsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class Getproductprovider with ChangeNotifier{
    static const url="https://jatinderji.github.io/users_pets_api/users_pets.json";
    bool isLoading=true;
    String Error='';
    Pets pets=Pets(data: []);

    GetDatafromApi() async{
        try{
           Response response=await http.get(Uri.parse(url));
           if(response.statusCode ==200){
              print(response.body);
               var jsondata=jsonDecode(response.body);
               var jsonreponse=Pets.fromJson(jsondata);
           }
           else{
             var error=response.statusCode.toString();
           }
        }
        catch(e){
             var error=e.toString();
        }
        isLoading=false;
        notifyListeners();
    }

}