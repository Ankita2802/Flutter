import 'package:figma/Saas%20Landing%20web%20figma/Utills/colors.dart';
import 'package:flutter/material.dart';
ButtonStyle borderButtonStyle=ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: const BorderSide(color: AppColors.Primary),
    borderRadius: BorderRadius.circular(10.0),
  ))
);