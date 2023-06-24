import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utils{
  static void fieldFocusChanger( BuildContext context,FocusNode current,FocusNode nextScope){
     current.unfocus();
     FocusScope.of(context).requestFocus(nextScope);
    }
  static toastMessage(String message){
   Fluttertoast.showToast(
    msg: message,
    backgroundColor: Colors.red,
    textColor: Colors.black,
    fontSize: 30.0,
    toastLength: Toast.LENGTH_LONG
    
    );
  }
  static void flushBarErrorMessages(String message,BuildContext context){
     showFlushbar(
      context: context,
       flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        message: message,
        backgroundColor: Colors.red,
        // title: "sad",
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        padding: const EdgeInsets.all(10.0),
        messageColor: Colors.amber,
        borderRadius: BorderRadius.circular(10.0),
        flushbarPosition: FlushbarPosition.BOTTOM,
        reverseAnimationCurve: Curves.easeInOut,
        duration: const Duration(seconds: 5),
        positionOffset: 20,
        icon: const Icon(Icons.error,size: 28,color: Colors.white,),
       )..show(context));
  }
  static snackBar(String message,BuildContext context){
     return ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
          backgroundColor: Colors.amber,
          content: Text(message))
     );
  }
}