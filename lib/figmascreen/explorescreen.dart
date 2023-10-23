import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'eventscreen.dart';
import 'offerdealscreen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController? _tabController;
  int selectedIndex = -1;
  List dataList = [
    {
      "leading": "assets/images/parpelstar.png",
      "title": "select",
      "price": "1000",
      "subprice": "5000",
      "validity": "1 Year validity",
      'image': "assets/images/greentick.png",
      "items": [
        'Free access to all knocksense Events',
        '75 Unlocks',
        '25 Extra unlocks on singing up with a referral code',
        '10 Cash Vouchers of 1000 each,worth 10000',
        'Cash Vouchers are fully redeemable no min.bill value'
      ],
    },
    {
      "leading": "assets/images/bluestar.png",
      "title": "select mini",
      'image': "assets/images/greentick.png",
      "price": "2500",
      "subprice": "1500",
      "validity": "6 Month validity",
      "items": [
        '40 Unlocks',
        '10 Extra unlocks on singing up with a referral code',
        '3 Cash Vouchers of 1000 each,worth 3000',
        'Cash Vouchers are fully redeemable no min.bill value'
      ],
    },
    {
      "leading": "assets/images/bluestar.png",
      "title": "platinum",
      'image': "assets/images/greentick.png",
      "price": "999",
      "subprice": "399",
      "validity": "12 Month validity",
      "items": [
        '40 Unlocks',
        '10 Extra unlocks on singing up with a referral code',
        '1 Cash Vouchers worth 1000'
            'Earn upto 500 per referral'
      ],
    },
    {
      "leading": "assets/images/silverstar.png",
      "title": "silver",
      'image': "assets/images/greentick.png",
      "price": "99",
      "subprice": "",
      "validity": "1 Month validity",
      "items": [
        '4 Unlocks',
        '1 Extra unlocks on singing up with a referral code',
        'Earn upto 300 per referral'
      ],
    },
  ];
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
    _istapped = !_istapped;

    _tabController?.addListener(_handletabchange);
  }

  BorderRadiusGeometry _borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0));

  void _handletabchange() {
    setState(() {
      _borderRadius = _tabController?.index == 1
          ? const BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))
          : const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0));
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
    // _istapped=!_istapped;
  }

  bool _istapped = true;
//   void updateIsTapped(bool isTapped) {
//   setState(() {
//     _istapped = isTapped;
//   });
// }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // // double height,width;
    // height=MediaQuery.of(context).size.height;
    // width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF044652),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  //  height:150,
                  //  width: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/knLogo.png")),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.file_copy_rounded,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Daily news digest at your preferred time",
                      style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Exclusive Deals and Offers",
                      style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.add_box_sharp,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Zero convenience free on event booking",
                      style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Choose Membership plan",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.yellow.shade200,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: dataList.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _istapped = !_istapped;
                          selectedIndex = index;
                          debugPrint(
                              dataList[index]['items'].map((e) => e).toList());
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: selectedIndex == index
                              ? null
                              : size.height / 3 / dataList.length,
                          width: size.width,
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 12.0, 0.0, 12.0),
                          // alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: _istapped
                                ? Border.all(width: 2.0, color: Colors.white)
                                : Border.all(width: 3.0, color: Colors.yellow),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          dataList[index]['leading'].toString(),
                                          height: 20,
                                          width: 20,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                            dataList[index]["title"]
                                                .toUpperCase(),
                                            style: GoogleFonts.interTight(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              // letterSpacing: -2.0,
                                            )),
                                      ]),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            dataList[index]["price"].toString(),
                                            style: GoogleFonts.interTight(
                                              color: Colors.yellow.shade700,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          // const SizedBox(width: 5,),
                                          Text(
                                            dataList[index]['subprice']
                                                .toString(),
                                            style: GoogleFonts.interTight(
                                                color: Colors.yellow.shade700,
                                                fontSize: 14.0),
                                          )
                                        ],
                                      ),
                                      Text(
                                        dataList[index]['validity'].toString(),
                                        style: GoogleFonts.rubik(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  )

                                  //   ],
                                  // )
                                ],
                              ),
                              //    Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       Row(
                              //       // mainAxisAlignment: MainAxisAlignment.start,
                              //       children: [
                              //          Image.asset(dataList[index]['leading'].toString(),height: 20,width: 20,),
                              //           const SizedBox(width: 10,),
                              //          Text(
                              //         dataList[index]["title"].toUpperCase(),
                              //         style:GoogleFonts.interTight(
                              //           fontSize: 20.0,
                              //           color: Colors.black,
                              //           fontWeight: FontWeight.w400,
                              //           // letterSpacing: -2.0,
                              //       ),
                              //       ),
                              //       // const SizedBox(width: 50,),
                              // Column(
                              //       // crossAxisAlignment: CrossAxisAlignment.center,
                              //       children: [
                              //       Row(
                              //         // mainAxisAlignment: MainAxisAlignment.start,
                              //         children: [
                              //          Text( dataList[index]["price"].toString(),style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 14.0,),),
                              //                            const SizedBox(width: 5,),
                              //                    Text(dataList[index]['subprice'].toString(),style: GoogleFonts.interTight(color: Colors.yellow.shade700,fontSize: 14.0),)
                              //       ],),
                              //         Text(dataList[index]['validity'].toString(),style: GoogleFonts.rubik(color: Colors.black,fontWeight: FontWeight.w400),)
                              //       ],
                              // )

                              //       ],
                              //       ),
                              //     ],
                              //   ),
                              // Row(children: [
                              //      Image.asset(dataList[index]['items'][0],height: 20,width: 20,),
                              //      Text(dataList[index]['items'][1])
                              // ],),
                              //  Row(children: [
                              //      Image.asset(dataList[index]['items'][0],height: 20,width: 20,),
                              //      Text(dataList[index]['items'][2])
                              // ],),

                              ...dataList[index]['items']
                                  .map(
                                    (e) => selectedIndex == index
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                dataList[index]['image']
                                                    .toString(),
                                                height: 20,
                                                width: 20,
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  e,
                                                  style: GoogleFonts.rubik(
                                                    fontSize: 12.0,
                                                    color: Colors.green,
                                                    height:
                                                        selectedIndex == index
                                                            ? 1.5
                                                            : 0.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  )
                                  .toList()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.yellow.shade400,
                  ),
                  child: Center(
                      child: Text(
                    "View Details",
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 15),
                  )),
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.99,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Expanded(
                  child: Column(children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TabBar(
                          indicator: BoxDecoration(
                              borderRadius: _borderRadius,
                              //borderRadius:_istapped ? BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)):BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                              color: Colors.grey.shade500),
                          controller: _tabController,
                          tabs: [
                            Tab(
                              child: Text("Offer & Deals",
                                  style: GoogleFonts.robotoSlab(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0)),
                            ),
                            Tab(
                              child: Text(
                                "Events",
                                style: GoogleFonts.robotoSlab(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: 50,
                          width: 280,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("Search Offer",
                                    style: GoogleFonts.interTight(
                                        color: Colors.white, fontSize: 15.0))
                              ]),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/filter.png"))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: _tabController,
                          children: const [
                            OffeDeal(),
                            EventScreen(),
                          ]),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
