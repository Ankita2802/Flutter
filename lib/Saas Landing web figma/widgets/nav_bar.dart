import 'package:figma/Saas%20Landing%20web%20figma/Utills/colors.dart';
import 'package:figma/Saas%20Landing%20web%20figma/Utills/style.dart';
import 'package:flutter/material.dart';
class NavBarButton extends StatefulWidget {
  const NavBarButton({super.key});

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               navlogo(),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   navButton('Features'),
                   navButton('About us'),
                   navButton('Pricing'),
                   navButton('Feedback'),
                 ],
               ),
               Container(
                height: 45,
                color: Colors.white,
                child: ElevatedButton(
                  style: borderButtonStyle,
                  onPressed: (){},
                  child: const Text("Request a demo",style: TextStyle(color: AppColors.Primary),),
                ),
               )
      
          ],
        ),
      ),
    );
    
  }
  Widget navButton(String text){
   return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
     child: TextButton(
      onPressed: (){},
      child: Text(text,style: const TextStyle(color: Colors.black,fontSize: 18.0),
     )),
   );
  } 
  Widget navlogo(){
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/Logo.png"))
      ),

    );
  }
}