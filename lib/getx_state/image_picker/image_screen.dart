import 'dart:io';

import 'package:figma/getx_state/image_picker/imagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image souce gallery'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: imagePickerController.imagepath.isNotEmpty
                    ? FileImage(
                        File(imagePickerController.imagepath.toString()))
                    : null,
              ),
            ),
            IconButton(
              onPressed: () {
                imagePickerController.getimage();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
