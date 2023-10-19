import 'package:figma/getx_state/get%20traslated/trans_langua.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreenget extends StatefulWidget {
  const HomeScreenget({super.key});

  @override
  State<HomeScreenget> createState() => _HomeScreengetState();
}

class _HomeScreengetState extends State<HomeScreenget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx tutorials'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Getx alert dialouge"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      color: Colors.red,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('light mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Getx alert dialouge"),
              subtitle: const Text("Getx alert dialouge with getx"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete dialouge",
                  titlePadding: const EdgeInsets.only(top: 20),
                  middleText: "are you sure you want to delete?",
                  contentPadding: const EdgeInsets.all(20.0),
                  // textConfirm: 'yes',
                  // textCancel: 'no',
                  content: const Column(
                    children: [
                      Text('ankita'),
                      Text('ankita'),
                      Text('ankita'),
                      Text('ankita'),
                      Text('ankita'),
                    ],
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text("ok"),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text("yes"),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              // Get.to(
              //   Screenone(
              //     name: 'Ankita',
              //   ),
              // );
              Get.toNamed(
                '/screenone',
                arguments: [
                  'Screenone',
                  20,
                  '28/02/2001',
                ],
              );
            },
            child: const Text("go to first screen"),
          ),
          TextButton(
            onPressed: () {
              Get.to(const TraslatedLanguages());
            },
            child: const Text("go to Language Translation"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Hey Ankita',
            'subscribe to channel',
            backgroundColor: Colors.brown,
            snackPosition: SnackPosition.BOTTOM,
            icon: const Icon(Icons.add),
            onTap: (snap) {},
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
