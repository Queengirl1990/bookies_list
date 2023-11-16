import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'profil.dart';
import '../libary/bookiesList-widgets.dart'; 
import '../styles.dart';

void main() {
  runApp(const Bookies());
}

class Bookies extends StatelessWidget {
  const Bookies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const BookiesList(),
        '/unreadBooks': (context) => const UnreadBooksScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: darkRed,
          elevation: 0,
        ),
      ),
    );
  }
}

class BookiesList extends StatefulWidget {
  const BookiesList({super.key});

  @override
  _BookiesListState createState() => _BookiesListState();
}

class UnreadBooksScreen extends StatelessWidget {
  const UnreadBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ungelesene Bücher'),
      ),
      body: const Center(
        child: Text('Hier sind deine ungelesenen Bücher.'),
      ),
    );
  }
}

class _BookiesListState extends State<BookiesList> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed,
        color: darkMode,
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 1) {
              Navigator.pushNamed(context, '/unreadBooks');
            }
          });
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.menu_book, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.help_outline, size: 30, color: Colors.white),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyProfilPage()),
                );
              },
              child: myCircularAvatar(),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: darkRed,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  color: darkRed,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Aktueller Lesestoff",
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          color: snowWhite,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // _statusBox("Aktualisieren"), // Entfernt
                      bookInfoContainer(0.5), // Hier wird die neue Funktion aufgerufen
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  buttonMinWidth: 320, // buttonbreite
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/unreadBooks');
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Stapel ungelesener Bücher",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Wunschliste",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Sonderband",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),    
                              topRight: Radius.circular(0),  
                              bottomLeft: Radius.circular(0), 
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Verschenken",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Neue Liste anlegen",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),   
                              topRight: Radius.circular(20),   
                              bottomLeft: Radius.circular(20), 
                              bottomRight: Radius.circular(20), 
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Zufallsgenerator",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),   
                              topRight: Radius.circular(20),   
                              bottomLeft: Radius.circular(20), 
                              bottomRight: Radius.circular(20), 
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite), 
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Kalender",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}