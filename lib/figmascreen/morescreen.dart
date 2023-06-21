import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
   int selectedIndex = -1;
  List dataList = [
    {
       
       "leading":"assets/images/parpelstar.png",
       "title": "select",
       "price":"1000",
       "subprice":"5000",
       "validity":"1 Year validity",
       'image':"assets/images/greentick.png",

       "items": [
        'Free access to all knocksense Events',
        '75 Unlocks',
        '25 Extra unlocks on singing up with a referral code',
        '10 Cash Vouchers of 1000 each,worth 10000',
        'Cash Vouchers are fully redeemable no min.bill value'
      ],
    },
    {
       "leading":"assets/images/bluestar.png",
       "title": "select mini",
       'image':"assets/images/greentick.png",
        "price":"2500",
       "subprice":"1500",
       "validity":"6 Month validity",
       "items": [
        '40 Unlocks',
        '10 Extra unlocks on singing up with a referral code',
        '3 Cash Vouchers of 1000 each,worth 3000',
        'Cash Vouchers are fully redeemable no min.bill value'
      ],
    },
    {
      "leading":"assets/images/bluestar.png",
       "title": "platinum",
       'image':"assets/images/greentick.png",
        "price":"999",
       "subprice":"399",
       "validity":"12 Month validity",
       "items": [
        '40 Unlocks',
        '10 Extra unlocks on singing up with a referral code',
        '1 Cash Vouchers worth 1000'
        'Earn upto 500 per referral'
      ],
    },
    {
       "leading":"assets/images/silverstar.png",
       "title": "silver",
       'image':"assets/images/greentick.png",
        "price":"99",
        "subprice":"",
       "validity":"1 Month validity",
       "items": [
        '4 Unlocks',
        '1 Extra unlocks on singing up with a referral code',
        'Earn upto 300 per referral'
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
      final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: dataList.length,
          itemBuilder:(context,index)
          =>GestureDetector(
              onTap:(){
                setState((){
                 selectedIndex = index;
                 debugPrint( dataList[index]['items'].map((e)=> e).toList());
                });
              },
              child: Container(
                 height:  selectedIndex == index ? null 
                  : size.height/2/ dataList.length,
                width: size.width,
                padding: const EdgeInsets.fromLTRB(32.0, 16.0, 0.0, 16.0),
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                         Image.asset(dataList[index]['leading'].toString(),height: 20,width: 20,),
                          const SizedBox(width: 10,),
                         Text(
                        dataList[index]["title"].toUpperCase(),
                        style:GoogleFonts.interTight(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -2.0,
                      ),
                    ),
                  const SizedBox(width: 100,),
                  Column(
                    children: [
                      Row(children: [
                         Text( dataList[index]["price"].toString(),style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 24.0,),),
                                           const SizedBox(width: 5,),
                                   Text(dataList[index]['subprice'].toString(),style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 24.0),)
                      ],),
                        Text(dataList[index]['validity'].toString(),style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w400),)
                    ],
                  )

                    
                      ],
                    ),
                    // Row(children: [
                    //      Image.asset(dataList[index]['items'][0],height: 20,width: 20,),
                    //      Text(dataList[index]['items'][1])
                    // ],),
                    //  Row(children: [
                    //      Image.asset(dataList[index]['items'][0],height: 20,width: 20,),
                    //      Text(dataList[index]['items'][2])
                    // ],),
                  
                      ...dataList[index]['items'].map((e)=> 
                      selectedIndex == index ?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(dataList[index]['image'].toString(),height: 20,width: 20,),
                            const SizedBox(width: 2,),
                            Text(
                            e,
                            style: GoogleFonts.rubik(
                              fontSize: 12.0,
                              color: Colors.green,
                              height: selectedIndex == index ? 1.5 : 0.0,
                              
                            ) ,
                      ),
                          ],
                        ) : Container(),).toList()
                    
                    
                  ],
                ),
              ),
            
          ),
          ),
      ),
    );

  }
}