import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BookInfo {
  final String title;
  final String author;
  final String genre;
  final String buttonLabel;

  BookInfo(this.title, this.author, this.genre, this.buttonLabel);
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final Map<String, BookInfo> bookInfoMap = {
    'Außerhalb der Schatten I': BookInfo('Außerhalb der Schatten I', 'Mandy J. Hard', 'Fantasy', 'Jetzt Lesen'),
    'Fourth Wings I': BookInfo('Fourth Wings I', 'Rebecca Yarros', 'Fantasy', 'Jetzt Lesen'),
    'Huskyküsse': BookInfo('Huskyküsse', 'Maria Winter', 'Romantik', 'Jetzt Lesen'),
    'Keep my silent Heart': BookInfo('Keep my silent Heart', 'Sazou G.', 'Romantik', 'Jetzt Lesen'),
    'Wicca Creed I': BookInfo('Wicca Creed I', 'Marah Woolf', 'Fantasy', 'Jetzt Lesen'),
    'Ravenhall Academy II': BookInfo('Ravenhall Academy II', 'Julia Kuhn', 'Fantasy', 'Jetzt Lesen'),
    'Bad At Love': BookInfo('Bad At Love', 'Julia Kuhn', 'New Adult Roman', 'Jetzt Lesen'),
  };

  final List<String> bookCoverAssets = [
    'assets/images/das-ist-erst.jpg',
    'assets/images/Fourth_wings.jpg',
    'assets/images/Huskyküsse.jpg',
    'assets/images/keep-my.jpg',
    'assets/images/wiccacreed.jpeg',
    'assets/images/erwachte-magie.jpg',
    'assets/images/bad-at-love.jpeg',
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buchcover'),
      ),
      body: CarouselSlider.builder(
        itemCount: bookInfoMap.length,
        options: CarouselOptions(
          height: 300,
          viewportFraction: 0.4,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final bookInfo = bookInfoMap.values.elementAt(index);
          final imagePath = bookCoverAssets[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                _showImageDialog(context, bookInfo, imagePath);
              },
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
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
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Hier kannst du die Aktion für "Jetzt lesen" hinzufügen
                Navigator.of(context).pop(); // Schließe den Dialog nach Klick auf "Jetzt lesen"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: darkRed,
                elevation: 5,
              ),
              child: Text(
                bookInfo.buttonLabel,
                style: const TextStyle(color: Colors.white),
              ),
            ),
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
