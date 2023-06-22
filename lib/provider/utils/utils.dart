import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utils{
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
        title: "sad",
        messageColor: Colors.amber,
        duration: const Duration(seconds: 5),
       )..show(context));
  }
}