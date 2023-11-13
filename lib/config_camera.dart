import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ConfigCameraAndGallery extends StatefulWidget {
  const ConfigCameraAndGallery({super.key});

  @override
  State<ConfigCameraAndGallery> createState() => _ConfigCameraAndGalleryState();
}

class _ConfigCameraAndGalleryState extends State<ConfigCameraAndGallery> {
  File? _file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config Camera'),
        actions: [
          IconButton(
            onPressed: () {
              openGallery();
            },
            icon: const Icon(Icons.image),
          ),
          IconButton(
            onPressed: () {
              openCamera();
            },
            icon: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: Center(
        child: (_file == null)
            ? const Text('Choose Image')
            : Image(
                image: FileImage(_file!),
              ),
      ),
    );
  }

  Future openGallery() async {
    final fileChoose =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(fileChoose!.path);
    });
  }

  Future openCamera() async {
    final fileChoose =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _file = File(fileChoose!.path);
    });
  }
}
