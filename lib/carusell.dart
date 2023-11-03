import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final List<BookInfo> bookInfoList = [
    BookInfo('Das ist erst', 'Autorenname 1', 'Fantasy', 'Jetzt Lesen'),
    BookInfo('Fourth Wings', 'Autorenname 2', 'Fantasy', 'Jetzt Lesen'),
    // Füge hier weitere Buchinformationen hinzu
  ];

  final List<String> bookCoverAssets = [
    'assets/images/das-ist-erst.jpg',
    'assets/images/Fourth_wings.jpg',
    // Füge hier weitere Bildpfade hinzu
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buchcover'),
      ),
      body: CarouselSlider.builder(
        itemCount: bookInfoList.length,
        options: CarouselOptions(
          height: 200,
          viewportFraction: 0.6,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final bookInfo = bookInfoList[index];
          final imagePath = bookCoverAssets[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                _showImageDialog(context, bookInfo, imagePath);
              },
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Hier kannst du die Aktion für "Jetzt lesen" hinzufügen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightGrey, 
                      elevation: 5,
                    ),
                    child: Text(
                      bookInfo.buttonLabel,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageDialog(BuildContext context, BookInfo bookInfo, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text('Titel: ${bookInfo.title}'),
              Text('Autor: ${bookInfo.author}'),
              Text('Genre: ${bookInfo.genre}'),
              ElevatedButton(
                onPressed: () {
                  // Hier kannst du die Aktion für "Jetzt lesen" im Dialog hinzufügen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightGrey, // Verwende die Farbe lightGray aus style.dart
                  elevation: 5,
                ),
                child: Text(
                  bookInfo.buttonLabel,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Schließen'),
            ),
          ],
        );
      },
    );
  }
}

class BookInfo {
  final String title;
  final String author;
  final String genre;
  final String buttonLabel;

  BookInfo(this.title, this.author, this.genre, this.buttonLabel);
}
