import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'datenbank.dart';

const Color darkRed = Color(0xFFAC5859);
const Color snowWhite = Color.fromARGB(250, 232, 232, 232);

void main() {
  runApp(MaterialApp(
    title: 'Bookie List',
    theme: ThemeData(
      primaryColor: darkRed,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/unreadBooks': (context) => UnreadBooksScreen(),
      '/bookDetails': (context) => BookDetailsScreen(),
      '/settings': (context) => SettingsScreen(), // Hinzugefügt für Einstellungen
      '/help': (context) => HelpScreen(), // Hinzugefügt für Hilfe
    },
  ));
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
    final PageController pageController = PageController(initialPage: 0);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/');
      } else if (index == 1) {
        Navigator.pushNamed(context, '/unreadBooks');
      } else if (index == 2) {
        Navigator.pushNamed(context, '/settings');
      } else if (index == 3) {
        Navigator.pushNamed(context, '/help');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "BookiesList",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.w900,
            fontSize: 28,
          ),
        ),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: darkRed,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/unreadBooks');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Stapel ungelesener Bücher",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Link einfügen
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Wunschliste",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Link einfügen
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Sonderband",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Link einfügen
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Verschenken",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Link einfügen
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Neue Liste anlegen",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Link einfügen
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(snowWhite),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      "Zufallsgenerator",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: snowWhite,
                ),
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: darkRed,
        color: snowWhite,
        items: <Widget>[
          Icon(Icons.home, size: 30),  // Home-Icon für den Homescreen
          Icon(Icons.menu_book, size: 30),  // Statt Icons.book für UnreadBooksScreen
          Icon(Icons.settings, size: 30),  // Einstellungen-Icon für die Einstellungsscreen
          Icon(Icons.help_outline, size: 30),  // Hilfe-Icon für den Hilfe-Screen
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class UnreadBooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Verwenden Sie die booksDatabase Map aus datenbank.dart
    final Map<String, Map<String, String>> books = booksDatabase;

    return Scaffold(
      appBar: AppBar(
        title: Text("Stapel ungelesener Bücher"),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      backgroundColor: darkRed,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {
              final bookName = books.keys.elementAt(index);
              final bookInfo = books[bookName];
              if (bookInfo != null) {
                final imagePath = bookInfo['image'] ?? '';
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bookDetails', arguments: bookInfo);
                  },
                  child: Card(
                    child: Column(
                      children: [
                        if (imagePath.isNotEmpty)
                          Image.network(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        Text(bookName),
                      ],
                    ),
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: darkRed,
        color: snowWhite,
        items: <Widget>[
          Icon(Icons.home, size: 30),  // Home-Icon für den Homescreen
          Icon(Icons.menu_book, size: 30),  // Statt Icons.book für UnreadBooksScreen
          Icon(Icons.settings, size: 30),  // Einstellungen-Icon für die Einstellungsscreen
          Icon(Icons.help_outline, size: 30),  // Hilfe-Icon für den Hilfe-Screen
        ],
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      Navigator.pushNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/unreadBooks');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/settings');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/help');
    }
  }
}

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? bookInfo = ModalRoute.of(context)!.settings.arguments as Map<String, String>?;

    if (bookInfo == null) {
      return Scaffold(
        body: Center(
          child: Text("Keine Buchinformationen vorhanden."),
        ),
      );
    }

    final String bookTitle = bookInfo['title'] ?? '';
    final String author = bookInfo['author'] ?? '';
    final String year = bookInfo['year'] ?? '';
    final String imagePath = bookInfo['image'] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text("Buch Details"),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imagePath.isNotEmpty)
                  Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                Text("Buchtitel: $bookTitle"),
                Text("Autor: $author"),
                Text("Jahr: $year"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: darkRed,
        color: snowWhite,
        items: <Widget>[
          Icon(Icons.home, size: 30),  // Home-Icon für den Homescreen
          Icon(Icons.menu_book, size: 30),  // Statt Icons.book für UnreadBooksScreen
          Icon(Icons.settings, size: 30),  // Einstellungen-Icon für die Einstellungsscreen
          Icon(Icons.help_outline, size: 30),  // Hilfe-Icon für den Hilfe-Screen
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/unreadBooks');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/settings');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/help');
          }
        },
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Einstellungen"),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Text("Einstellungen werden hier angezeigt."),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        backgroundColor: darkRed,
        color: snowWhite,
        items: <Widget>[
          Icon(Icons.home, size: 30),  // Home-Icon für den Homescreen
          Icon(Icons.menu_book, size: 30),  // Statt Icons.book für UnreadBooksScreen
          Icon(Icons.settings, size: 30),  // Einstellungen-Icon für die Einstellungsscreen
          Icon(Icons.help_outline, size: 30),  // Hilfe-Icon für den Hilfe-Screen
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/unreadBooks');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/settings');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/help');
          }
        },
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hilfe"),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Text("Hilfeinhalte werden hier angezeigt."),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 3,
        backgroundColor: darkRed,
        color: snowWhite,
        items: <Widget>[
          Icon(Icons.home, size: 30),  // Home-Icon für den Homescreen
          Icon(Icons.menu_book, size: 30),  // Statt Icons.book für UnreadBooksScreen
          Icon(Icons.settings, size: 30),  // Einstellungen-Icon für die Einstellungsscreen
          Icon(Icons.help_outline, size: 30),  // Hilfe-Icon für den Hilfe-Screen
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/unreadBooks');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/settings');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/help');
          }
        },
      ),
    );
  }
}
