import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final List<String> bookCoverAssets = [
    'assets/images/das-ist-erst.jpg',
    'assets/images/Fourth_wings.jpg',
    'assets/images/Huskyküsse.jpg',
    'assets/images/keep-my.jpg',
    'assets/images/wiccacreed.jpeg',
    'assets/images/erwachte-magie.jpg',
    'assets/images/bad-at-love.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buchcover'),
      ),
      body: CarouselSlider(
        items: bookCoverAssets
            .map((assetPath) => GestureDetector(
                  onTap: () {
                    _showImageDialog(context, assetPath);
                  },
                  child: Image.asset(
                    assetPath,
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 0.4,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, String assetPath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(
            assetPath,
            fit: BoxFit.contain,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Schließen'),
            ),
          ],
        );
      },
    );
  }
}
