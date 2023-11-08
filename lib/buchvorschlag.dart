import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookSuggestionScreen(),
    );
  }
}

class BookSuggestionScreen extends StatefulWidget {
  @override
  _BookSuggestionScreenState createState() => _BookSuggestionScreenState();
}

class _BookSuggestionScreenState extends State<BookSuggestionScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Zurücknavigieren
          },
        ),
      ),
      backgroundColor: darkRed,
      body: ListView.builder(
        itemCount: bookSuggestion.length,
        itemBuilder: (context, index) {
          final bookData = bookSuggestion.values.toList()[index];
          final bookTitle = bookData['title']!;
          final bookAuthor = bookData['author']!;
          final bookGenre = bookData['genre']!;
          final bookYear = bookData['year']!;
          final bookImage = bookData['image']!;
          final bookBlurb = bookData['blurb']!;

          return Column(
            children: [
              const SizedBox(
                width: 320,
                child: Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 20, color: Colors.grey),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: Colors.grey),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: Colors.grey),
                ],
              ),
              SizedBox(height: 10),
              Image.asset(bookImage, width: 100, height: 150),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bookTitle,
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Author: $bookAuthor\nGenre: $bookGenre\nYear: $bookYear',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bookBlurb,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
