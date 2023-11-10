import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';
import 'bookiesList-widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookSuggestionScreen(),
    );
  }
}

class BookSuggestionScreen extends StatefulWidget {
  const BookSuggestionScreen({super.key});

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
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Zurücknavigieren
          },
        ),
        title: const Text(
          'Deine Vorschläge',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          myCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: Center(
        child: SizedBox(
          width: 320,
          child: ListView.builder(
            itemCount: bookSuggestion.length,
            itemBuilder: (context, index) {
              final bookData = bookSuggestion[index];
              final bookTitle = bookData.title;
              final bookAuthor = bookData.author;
              final bookGenre = bookData.genre;
              final bookYear = bookData.year;
              final bookImage = bookData.image;
              final bookBlurb = bookData.blurb;

              return Column(
                children: [
                  const SizedBox(
                    width: 320,
                    child: Divider(
                      color: Colors.white,
                      height: 20,
                      thickness: 2,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 20, color: lightGrey),
                      SizedBox(width: 10),
                      Icon(Icons.favorite, size: 20, color: lightGrey),
                      SizedBox(width: 10),
                      Icon(Icons.favorite, size: 20, color: lightGrey),
                    ],
                  ),
                  const SizedBox(
                    width: 320,
                    child: Divider(
                      color: snowWhite,
                      height: 20,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(bookImage, width: 100, height: 150),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bookTitle,
                              style: const TextStyle(
                                fontFamily: 'DancingScript',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Autor: $bookAuthor',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Genre: $bookGenre',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Veröffentlichung: $bookYear',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      bookBlurb,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Hier kannst du die Interaktion hinzufügen
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 5,
                    ),
                    child: const Text("Auswählen"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
