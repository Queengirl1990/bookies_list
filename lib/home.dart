import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'profil.dart'; // Stelle sicher, dass 'profil.dart' importiert ist
import 'styles.dart'; // Importiere die 'styles.dart' Datei für Farben und Stile

void main() {
  runApp(const Bookies());
}

class Bookies extends StatelessWidget {
  const Bookies({Key? key}) : super(key: key);

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
          color: darkRed,
          elevation: 0,
        ),
      ),
    );
  }
}

class BookiesList extends StatefulWidget {
  const BookiesList({Key? key}) : super(key: key);

  @override
  _BookiesListState createState() => _BookiesListState();
}

class UnreadBooksScreen extends StatelessWidget {
  const UnreadBooksScreen({Key? key}) : super(key: key);

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfilPage()));
              },
              child: MyCircularAvatar(),
            ),
          ],
        ),
      ),
      body: SafeArea(
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
                    _statusBox("Aktualisieren"),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Stapel ungelesener Bücher",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Wunschliste",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Sonderband",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Verschenken",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Neue Liste anlegen",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    child: const SizedBox(
                      width: 320,
                      child: Center(
                        child: Text(
                          "Zufallsgenerator",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }

  Widget _statusBox(String buttonText) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: snowWhite,
        border: Border.all(color: Colors.grey),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Life after you",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: darkMode,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Mandy J. Hard",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Kategorie",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "New Adult",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const Text(
                '350 von 415 Seiten',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: darkMode,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Aktion einfügen
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(snowWhite),
                ),
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: darkMode,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
                height: 120,
                child: Image.asset('assets/images/life_after.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }

Widget MyCircularAvatar() {
  return Row(
    children: [
      const SizedBox(width: 20), // Hier können Sie den gewünschten Abstand einstellen
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ClipOval(
          child: Image.asset(
            'assets/images/avatar.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}
}