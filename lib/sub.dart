import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'styles.dart';
import 'datenbank.dart';
import 'home.dart';

void main() {
  runApp(const UnreadBooksApp());
}

class UnreadBooksApp extends StatelessWidget {
  const UnreadBooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unread Books App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UnreadBooksScreen(),
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
                builder: (context) => const BookiesList(), 
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                childAspectRatio: 80 / 100, 
              ),
              itemCount: unreadBooks.length, 
              itemBuilder: (context, index) {
                final bookKey = unreadBooks.keys.elementAt(index); 
                return GestureDetector(
                  onTap: () {
                    //  Buchdetailbildschirms
                    //  Navigator.push 
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 80,
                      height: 100,
                      child: Image.asset(
                        unreadBooks[bookKey]!['image']!, 
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
