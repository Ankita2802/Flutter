import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OffeDeal extends StatefulWidget {
  const OffeDeal({super.key});

  @override
  State<OffeDeal> createState() => _OffeDealState();
}

class _OffeDealState extends State<OffeDeal> {
  @override
   List<String> imageList=[
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png",
     "assets/images/fitness.png"
    ];
  List textfield=[
    "Fashin & Lifestyle",
    "Food",
    "Drinks",
    "Health & Wellness",
    "Freelancers-Personal Service",
    "Fitness",
    "Pet Wellness & Services",
    "Decor & interiors"
    
    ];
  bool isGridViewOpen = false;
  //     void _toggleGridViewVisibility() {
  //   setState(() {
  //     print(_isGridViewVisible);
  //     _isGridViewVisible = !_isGridViewVisible;
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Pick what makes you happy",style: GoogleFonts.inter(color: Colors.yellow.shade500,fontSize: 18.0,fontWeight: FontWeight.w500)),
          Container(
            // padding: EdgeInsets.all(8.0),
            height: 215,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 4,  
                    mainAxisSpacing: 10.0,
                    // crossAxisSpacing: 5.0,
                ),  
               itemBuilder: (context, index) {
                 return Column(
                  children: [
                       Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(imageList[index]),fit: BoxFit.cover)
                    ),
                       ),
                       Expanded(
                        flex: 1,
                        child: Text(textfield[index],style: GoogleFonts.rubik(fontSize: 11.0,color: Colors.white),))
                  ],
                 );
               },
               ),
          ),
           Visibility(
            visible: isGridViewOpen,
            child: SizedBox(
              height: 220,
              child:GridView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 4,  
                    mainAxisSpacing: 10.0,
                    // crossAxisSpacing: 1.0,
                ),  
               itemBuilder: (context, index) {
                 return Column(
                  children: [
                       Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(imageList[index]),fit: BoxFit.cover)
                    ),
                       ),
                       Expanded(
                        flex: 1,
                        child: Text(textfield[index],style: GoogleFonts.rubik(fontSize: 11.0,color: Colors.white),))
                  ],
                 );
               },
               ),
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                isGridViewOpen = !isGridViewOpen;
              });
            },
            child: Center(
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade900,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(isGridViewOpen? 'View less' : 'View more',style: GoogleFonts.rubik(color: Colors.white),),
                     Icon(Icons.keyboard_control_key,color: Colors.white,size: 20.0,),
                    ],
                  ),
                ),
                ),
            ),
          ),

      
        ],
      ),
    );
  }
}