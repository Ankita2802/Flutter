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
     bool _isGridViewVisible = false;
      void _toggleGridViewVisibility() {
    setState(() {
      _isGridViewVisible = !_isGridViewVisible;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Pick what makes you happy",style: GoogleFonts.inter(color: Colors.yellow.shade500,fontSize: 18.0,fontWeight: FontWeight.w500)),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 200,
            child: GridView.builder(
              shrinkWrap: true,

              itemCount: imageList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 4,  
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 10.0,
                ),  
               itemBuilder: (context, index) {
                 return Column(
                  children: [
                       Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(imageList[index]),fit: BoxFit.cover)
                    ),
                       ),
                       Expanded(
                        flex: 1,
                        child: Text(textfield[index],style: GoogleFonts.rubik(fontSize: 12.0,color: Colors.white),))
                  ],
                 );
               },
               ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: _toggleGridViewVisibility,
            child: Center(
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade900,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_upward_outlined,color: Colors.white,size: 18.0,),
                      Center(child: Text(_isGridViewVisible ? 'View less' : 'View more',style: GoogleFonts.rubik(color: Colors.white),)),
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