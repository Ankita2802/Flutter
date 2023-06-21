

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff044652),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.9,
              width: double.infinity,
              color: const Color(0xff044652),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height*0.04),
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
                          const Icon(Icons.file_copy_sharp,color: Colors.white,),
                         const SizedBox(width: 10), 
                          Text("Daily news digest at your preferred time",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
                        ],),
                          Row(
                        children: [
                          const Icon(Icons.circle_sharp,color: Colors.white,),
                           const SizedBox(width: 10),
                          Text("Exclusive Deals and Offers",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
                        ],),
                          Row(
                        children: [
                          const Icon(Icons.file_copy_sharp,color: Colors.white,),
                           const SizedBox(width: 10),
                          Text("Zero convenience free on event booking",style: GoogleFonts.rubik(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
                        ],),
                        const SizedBox(height: 30,),
                    Text("Choose Membership plan",style: GoogleFonts.mukta(color: Colors.yellow.shade200,fontSize: 20.0,fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
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
                            Image.asset("assets/images/parpelstar.png",height: 30,width: 30,),
                            const SizedBox(width: 10,),
                            Text("SELECT",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500)),
                            const SizedBox(width: 70,),
                        
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("1000",style: GoogleFonts.interTight(color: const Color.fromRGBO(78, 72, 15, 1),fontSize: 24.0,),),
                                    const SizedBox(width: 5,),
                            Text("5000",style: GoogleFonts.interTight(color: const Color.fromARGB(255, 78, 72, 15),fontSize: 24.0),)
                                  ],
                                ),
                                Text("1 Year validity",style: GoogleFonts.rubik(color: Colors.black),)
                              ],
                            ),
                    
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
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
                            Image.asset("assets/images/bluestar.png",height: 30,width: 30,),
                            const SizedBox(width: 10,),
                            Text("SELECT MINI",style: GoogleFonts.interTight(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500)),
                            const SizedBox(width: 30,),
                        
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("1000",style: GoogleFonts.interTight(color: const Color.fromRGBO(78, 72, 15, 1),fontSize: 24.0,),),
                                    const SizedBox(width: 5,),
                            Text("5000",style: GoogleFonts.interTight(color: const Color.fromARGB(255, 78, 72, 15),fontSize: 24.0),)
                                  ],
                                ),
                                Text("6 Month validity",style: GoogleFonts.rubik(color: Colors.black),)
                              ],
                            ),
                    
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
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
                            Image.asset("assets/images/parpelstar.png",height: 30,width: 30,),
                            const SizedBox(width: 10,),
                            Text("PLATINUM",style: GoogleFonts.interTight(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500)),
                            const SizedBox(width: 40,),
                        
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("999",style: GoogleFonts.interTight(color: const Color.fromRGBO(78, 72, 15, 1),fontSize: 24.0,),),
                                    const SizedBox(width: 5,),
                            Text("399",style: GoogleFonts.interTight(color: const Color.fromARGB(255, 78, 72, 15),fontSize: 24.0),)
                                  ],
                                ),
                                Text("12 Month validity",style: GoogleFonts.rubik(color: Colors.black),)
                              ],
                            ),
                    
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 10,),
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
                          Image.asset("assets/images/silverstar.png",height: 30,width: 30,),
                          const SizedBox(width: 10,),
                          Text("SILVER",style: GoogleFonts.interTight(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500)),
                          const SizedBox(width: 80,),
                        
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("99",style: GoogleFonts.interTight(color: const Color.fromRGBO(78, 72, 15, 1),fontSize: 24.0,),),
                                  const SizedBox(width: 5,),
                  
                                ],
                              ),
                              Text("1 Month validity",style: GoogleFonts.rubik(color: Colors.black),)
                            ],
                          ),
                    
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.yellow.shade400,
                  ),
                  child: Center(child: Text("View Details",style: GoogleFonts.rubik(color: Colors.white,fontSize: 15),)),
                  )
                    ]),
                ),
              ),
            ),
            Container(
             height: MediaQuery.of(context).size.height*0.8,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
              child: const Column(children: [

              ]),
          
            )
          ]
        )
        ),
    );
  }
}