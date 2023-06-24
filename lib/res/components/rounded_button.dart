import 'package:figma/res/components/colors.dart';
import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPresse;
  const RoundedButton({super.key,
  required this.title,
  this.loading=false,
  required this.onPresse
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPresse,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:AppColors.btnColor,
        ),
        child: Center(
          child: loading ? const CircularProgressIndicator(color: Colors.white):
          Text(title,style: const TextStyle(color: AppColors.whiteColor,fontSize: 28.0,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}