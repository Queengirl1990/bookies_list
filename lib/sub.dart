import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'styles.dart';
import 'datenbank.dart';
import 'home.dart';

void main() {
  runApp(UnreadBooksApp());
}

class UnreadBooksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unread Books App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UnreadBooksScreen(),
    );
  }
}

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
        elevation: 0,
      ),
      backgroundColor: darkRed,
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed,
        color: darkMode,
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => BookiesList(), // Hier den Namen deines BookiesList-Screens verwenden
              ),
              (route) => false,
            );
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
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Zeige immer 3 Bücher nebeneinander
                childAspectRatio: 80 / 100, // Größe des Buches auf 80x100
              ),
              itemCount: booksDatabase.length,
              itemBuilder: (context, index) {
                final bookKey = booksDatabase.keys.elementAt(index);
                final bookData = booksDatabase[bookKey];
                return GestureDetector(
                  onTap: () {
                    // Hier kannst du die Logik zum Öffnen des Buchdetailbildschirms hinzufügen
                    // Du kannst z.B. Navigator.push verwenden, um zur Detailseite zu wechseln
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Container(
                      width: 80,
                      height: 100,
                      child: Image.network(
                        bookData!['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}