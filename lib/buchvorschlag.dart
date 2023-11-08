import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

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
        title: Text(
          'Deine Vorschläge',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: darkRed,
      body: Center(
        child: Container(
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
                  Row(
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
                child: const Divider( 
                  color: snowWhite,
                  height: 20,
                  thickness: 2,
                ),
              ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(bookImage, width: 100, height: 150),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bookTitle,
                              style: TextStyle(
                                fontFamily: 'DancingScript',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Autor: $bookAuthor',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Genre: $bookGenre',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Veröffentlichung: $bookYear',
                              style: TextStyle(
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
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Hier kannst du die Interaktion hinzufügen
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 5,
                    ),
                    child: Text("Auswählen"),
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
