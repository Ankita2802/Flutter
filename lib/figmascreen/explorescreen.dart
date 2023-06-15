import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'eventscreen.dart';
import 'offerdealscreen.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> with SingleTickerProviderStateMixin {
   late TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  void dispose(){
    _tabController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height,width;
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF044652),
            body: SingleChildScrollView(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                   height: MediaQuery.of(context).size.height*0.99,
                   width: double.infinity,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: SingleChildScrollView(
                       child: Column(children: [
                          const SizedBox(height:30),
                               Container(
                                 height: 150,
                                 width: 150,
                                 decoration: const BoxDecoration(
                                   image: DecorationImage(
                                     image:AssetImage("assets/images/knLogo.png")
                                      ),
                                 ),
                               ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                             Icon(Icons.file_copy_rounded,color:Colors.white,size: 20.0,),
                                  const SizedBox(width: 10), 
                                   Text("Daily news digest at your preferred time",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         children: [
                             Icon(Icons.settings,color: Colors.white,),
                                  const SizedBox(width: 10),
                                 Text("Exclusive Deals and Offers",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                               
                         ],
                       ),
                       const SizedBox(height: 10,),
                        Row(
                               children: [
                                 Icon(Icons.add_box_sharp,color: Colors.white,),
                                 const  SizedBox(width: 10),
                                 Text("Zero convenience free on event booking",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                               ],),
                       const SizedBox(height: 40,),
                       Text("Choose Membership plan",style: GoogleFonts.robotoSlab(color: Colors.yellow.shade200,fontSize: 20.0,fontWeight: FontWeight.w600),),
                       const SizedBox(height: 30,),
                       Container(
                             width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.0),
                               color: const Color.fromRGBO(255, 255, 255, 1)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                               child: Row(
                                 children: [
                                   Image.asset("assets/images/parpelstar.png",height: 20,width: 20,),
                                   const SizedBox(width: 10,),
                                   Text("SELECT",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w600)),
                                   const SizedBox(width: 70,),
                               
                                   Column(
                                     children: [
                                       Row(
                                         children: [
                                           Text("1000",style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 24.0,),),
                                           const SizedBox(width: 5,),
                                   Text("5000",style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 24.0),)
                                         ],
                                       ),
                                       Text("1 Year validity",style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w400),)
                                     ],
                                   ),
                           
                                 ],
                               ),
                             ),
                           ),
                           const SizedBox(height: 20,),
                           Container(
                             height: 80,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.0),
                               color: const Color.fromRGBO(255, 255, 255, 1)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                               child: Row(
                                 children: [
                                   Image.asset("assets/images/bluestar.png",height: 20,width: 20,),
                                   const SizedBox(width: 10,),
                                   Text("SELECT MINI",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w600)),
                                   const SizedBox(width: 30,),
                               
                                   Column(
                                     children: [
                                       Row(
                                         children: [
                                           Text("1000",style: GoogleFonts.interTight(color: Colors.yellow.shade600,fontSize: 24.0,),),
                                          const  SizedBox(width: 5,),
                                   Text("5000",style: GoogleFonts.interTight(color: Colors.yellow.shade600,fontSize: 24.0),)
                                         ],
                                       ),
                                       Text("6 Month validity",style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w500),)
                                     ],
                                   ),
                           
                                 ],
                               ),
                             ),
                           ),
                           const SizedBox(height: 20,),
                            Container(
                             height: 80,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.0),
                               color:const  Color.fromRGBO(255, 255, 255, 1)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                               child: Row(
                                 children: [
                                   Image.asset("assets/images/parpelstar.png",height: 20,width: 20,),
                                   const SizedBox(width: 10,),
                                   Text("PLATINUM",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w600)),
                                   const SizedBox(width: 40,),
                               
                                   Column(
                                     children: [
                                       Row(
                                         children: [
                                           Text("999",style: GoogleFonts.interTight(color: Colors.yellow.shade600,fontSize: 24.0,),),
                                           SizedBox(width: 5,),
                                   Text("399",style: GoogleFonts.interTight(color: Colors.yellow.shade600,fontSize: 24.0),)
                                         ],
                                       ),
                                       Text("12 Month validity",style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w500),)
                                     ],
                                   ),
                           
                                 ],
                               ),
                             ),
                           ),
                          SizedBox(height: 20,),
                          Container(
                           width: double.infinity,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             color: Color.fromRGBO(255, 255, 255, 1)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                             child: Row(
                               children: [
                                 Image.asset("assets/images/silverstar.png",height: 20,width: 20,),
                                 SizedBox(width: 10,),
                                 Text("SILVER",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w600)),
                                 SizedBox(width: 80,),
                               
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         Text("99",style: GoogleFonts.interTight(color: Colors.yellow.shade600,fontSize: 24.0,),),
                                         SizedBox(width: 5,),
                                               
                                       ],
                                     ),
                                     Text("1 Month validity",style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w500),)
                                   ],
                                 ),
                           
                               ],
                             ),
                           ),
                                               ), 
                          // SizedBox(height: 20,),
                      //  Container(
                      //  height: 50,
                      //  width: double.infinity,
                      //  decoration: BoxDecoration(
                      //    borderRadius: BorderRadius.circular(10.0),
                      //    color: Colors.yellow.shade400,
                      //  ),
                      //  child: Center(child: Text("View Details",style: GoogleFonts.rubik(color: Colors.white,fontSize: 15),)),
                      //  ),
                       ]),
                     ),
                   ),
                 ),
              
                Container(
                 height: MediaQuery.of(context).size.height*0.7,
                 width: double.infinity,
                  decoration: new BoxDecoration(
                     color: Colors.black,
                     borderRadius: new BorderRadius.only(
                       topLeft: const Radius.circular(40.0),
                       topRight: const Radius.circular(40.0),
                     )
                   ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                   child: Column(children: [
                     SizedBox(height: 30,),
                     
          Container(
            height: 60,
            width:350,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(40)
            ),
            child: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade500
              ),
              controller: _tabController,
              tabs: [
                  Tab(
                    child: Text("Offer & Deals",style:GoogleFonts.robotoSlab(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0)),
                  ),
                  Tab(
                    child: Text("Events",style:GoogleFonts.robotoSlab(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                  ),
              
              ],
            ),
          ),
          SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
          child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(Icons.search,color: Colors.white,),
                  const SizedBox(width: 5,),
                  Text("Search Offer",style: GoogleFonts.interTight(color: Colors.white,fontSize: 15.0))
                ]),
          ),
          ),
             
            Container(
              height:50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                
                  image: AssetImage("assets/images/filter.png")
                )
              ),
             )
             ],
           ),
          SizedBox(height: 20,),
          Expanded(
            
            child: TabBarView(
              controller: _tabController,
                children: [
                    const OffeDeal(),
                    const EventScreen(),
                ]
            ),
          ),
                   ]),
                 ),
               ),
                    
              ],
              ),
            ),
    );
  }
}