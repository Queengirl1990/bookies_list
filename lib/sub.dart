import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'styles.dart';

class UnreadBooksScreen extends StatefulWidget {
  const UnreadBooksScreen({Key? key}) : super(key: key);

  @override
  _UnreadBooksScreenState createState() => _UnreadBooksScreenState();
}

class _UnreadBooksScreenState extends State<UnreadBooksScreen> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stapel ungelesener Bücher",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: darkRed,
      ),
      backgroundColor: darkRed, // Hintergrundfarbe des Screens
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed,
        color: darkMode,
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          if (index == 0) {
            // Zurück zum Homescreen
            Navigator.pushNamed(context, '/');
          }
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.menu_book, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.help_outline, size: 30, color: Colors.white),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity, // Breite des Bildes auf die Bildschirmbreite einstellen
            height: 120,
            child: Image.asset('assets/images/life_after.jpg'),
          ),
          // Hier kannst du weitere Widgets für den Inhalt hinzufügen
        ],
      ),
    );
  }
}
