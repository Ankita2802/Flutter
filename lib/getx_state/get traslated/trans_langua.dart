import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TraslatedLanguages extends StatefulWidget {
  const TraslatedLanguages({super.key});

  @override
  State<TraslatedLanguages> createState() => _TraslatedLanguagesState();
}

class _TraslatedLanguagesState extends State<TraslatedLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Language Translation"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(
                      const Locale('en', 'Us'),
                    );
                  },
                  child: const Text('English'),
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(
                      const Locale('hi', 'IN'),
                    );
                  },
                  child: const Text('HIndi'),
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(
                      const Locale('gu', 'IN'),
                    );
                  },
                  child: const Text('Gujrati'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
