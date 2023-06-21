import 'package:figma/provider/screens/RestApi/models/petsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class Getproductprovider with ChangeNotifier{
    static const url="https://jatinderji.github.io/users_pets_api/users_pets.json";
    bool isLoading=true;
    // ignore: non_constant_identifier_names
    String Error='';
    Pets pets=Pets(data: []);

    // ignore: non_constant_identifier_names
    GetDatafromApi() async{
        try{
           Response response=await http.get(Uri.parse(url));
           if(response.statusCode ==200){
              debugPrint(response.body);
              //  var jsondata=jsonDecode(response.body);
              //  var jsonreponse=Pets.fromJson(jsondata);
              pets=petsFromJson(response.body);
              debugPrint(pets as String?);
           }
           else{
             // ignore: unused_local_variable
             var error=response.statusCode.toString();
           }
        }
        catch(e){
             // ignore: unused_local_variable
             var error=e.toString();
        }
        isLoading=false;
        notifyListeners();
    }

}