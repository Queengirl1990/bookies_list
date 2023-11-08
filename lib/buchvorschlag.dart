import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(
            width: 320,
            child: Divider(
              color: Colors.white,
              height: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Vorschlag 1",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
