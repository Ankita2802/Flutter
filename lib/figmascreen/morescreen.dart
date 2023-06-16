import 'package:flutter/material.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
   int selectedIndex = -1;
  List dataList = [
    {
      "title": "Title 1",
      "items": [
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
      ],
    },
    {
      "title": "Title 2",
      "items": [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
        "Item 5",
        "Item 6",
        "Item 7",
        "Item 8",
      ],
    },
    {
      "title": "Title 3",
      "items": [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
      ],
    },
    {
      "title": "Title 4",
      "items": [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
        "Item 5",
        "Item 6",
        "Item 7",
        "Item 8",
        "Item 9",
        "Item 10",
      ],
    },
    {
      "title": "Title 5",
      "items": [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
        "Item 5",
        "Item 6",
        "Item 7",
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
                 print( dataList[index]['items'].map((e)=> e).toList());
                });
              },
              child: Container(
                 height:  selectedIndex == index ? null 
                  : size.height / dataList.length,
                width: size.width,
                padding: const EdgeInsets.fromLTRB(32.0, 16.0, 0.0, 16.0),
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 8.0, color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dataList[index]["title"].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 38.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -2.0,
                      ),
                    ),
                    
                      ...dataList[index]['items'].map((e)=> 
                      selectedIndex == index ?
                        Text(
                        e,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          height: selectedIndex == index ? 1.5 : 0.0,
                        ) ,
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