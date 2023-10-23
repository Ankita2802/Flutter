import 'package:figma/getx_state/favorite%20app/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteApp extends StatefulWidget {
  const FavoriteApp({super.key});

  @override
  State<FavoriteApp> createState() => _FavoriteAppState();
}

class _FavoriteAppState extends State<FavoriteApp> {
  // List<String> fruitlist = ['apple', 'banana', 'orange', 'greps'];
  // List<String> tempfruitlist = [];
  final FavoriteController favoriteController = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: favoriteController.fruitlist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (favoriteController.tempfruitlist
                        .contains(favoriteController.fruitlist[index])) {
                      // favoriteController.tempfruitlist
                      //     .remove(favoriteController.fruitlist[index]);
                      favoriteController.removeToFavorite(
                          favoriteController.fruitlist[index]);
                    } else {
                      favoriteController
                          .addToFavorite(favoriteController.fruitlist[index]);
                    }
                  },
                  title: Text(
                    favoriteController.fruitlist[index],
                  ),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: favoriteController.tempfruitlist
                              .contains(favoriteController.fruitlist[index])
                          ? Colors.red
                          : Colors.white,
                    ),
                  )),
            );
          },
        ));
  }
}
