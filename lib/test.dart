import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

const Color darkRed = Color(0xFFAC5859);
const Color snowWhite = Colors.white;
const Color darkMode = Color(0xFF343131);

void main() {
  runApp(const Bookies());
}

class Bookies extends StatelessWidget {
  const Bookies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BookiesList(),
      theme: ThemeData.light(),
    );
  }
}

class BookiesList extends StatefulWidget {
  const BookiesList({Key? key}) : super(key: key);

  @override
  _BookiesListState createState() => _BookiesListState();
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
          });
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.amber),
          Icon(Icons.menu_book, size: 30, color: Colors.amber),
          Icon(Icons.settings, size: 30, color: Colors.amber),
          Icon(Icons.help_outline, size: 30, color: Colors.amber),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: darkRed,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(20),
                color: darkRed,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aktueller Lesestoff",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
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
                    child: const Text(
                      "Stapel ungelesener Bücher",
                      style: TextStyle(
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(0, 2),
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
              Text(
                "Life after you",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: darkMode,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Mandy J. Hard",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Kategorie",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                "New Adult",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
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
                  style: TextStyle(
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
}
