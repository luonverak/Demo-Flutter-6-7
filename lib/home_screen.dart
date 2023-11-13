import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: ImageSlideshow(
          indicatorColor: Colors.blue,
          autoPlayInterval: 5000,
          isLoop: true,
          children: [
            Image.asset(
              'images/sample_image_1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/sample_image_2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/sample_image_3.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
