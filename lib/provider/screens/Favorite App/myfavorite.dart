import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Favorite_provider.dart';
class MyFavouriteScreen extends StatefulWidget {
  const MyFavouriteScreen({super.key});

  @override
  State<MyFavouriteScreen> createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
 @override
  Widget build(BuildContext context) {
   final favouriteprovider=Provider.of<FavoriteListProvider>(context);
    debugPrint("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text(" My Favourite App"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyFavouriteScreen()));
            },
            child: const Icon(Icons.favorite),
            ),
            const SizedBox(width: 20,),
        ],
      ),
      body: Column(children: [
        Expanded(child: 
        ListView.builder(
          itemCount: favouriteprovider.selecteditem.length,
          itemBuilder: (context, index) {
          return Consumer<FavoriteListProvider>(builder: (context, value, child) {
            return ListTile(
            onTap: (){
              //  SelectedItem.add(index);
              //  value.addSelectedItem(index);
              //  setState(() {
              //      print(SelectedItem);
              //  });
              if(value.selecteditem.contains(index)){
                  value.removeItem(index);
              }
              else{
                value.addSelectedItem(index);
              }
            },
               title: Text('Item$index'),
               trailing:Icon(value.selecteditem.contains(index)?Icons.favorite:Icons.favorite_outline),
          );
          },);
        },))
      ]),
    );
  }
}