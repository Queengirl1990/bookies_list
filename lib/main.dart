import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
    },
  ));
}

Widget _statusBox(String progress, String buttonText) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: const Color.fromARGB(255, 39, 39, 46),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Life after you",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Text(
          "Mandy J. Hard",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
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
        const SizedBox(height: 10),
        LinearProgressIndicator(
          value: 0.63,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Aktion beim Klicken des Buttons
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

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
              _statusBox("63%", "Button Text"), // Hier fügst du die StatusBox ein
              SizedBox(height: 20), // Abstand zwischen der StatusBox und den Buttons
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
          Icon(Icons.home, size: 30),
          Icon(Icons.book, size: 30),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class UnreadBooksScreen extends StatelessWidget {
  final Map<String, Map<String, String>> books = {
    'Außerhalb der Schatten I': {
      'title': 'Außerhalb der Schatten I',
      'author': 'MJ Hard',
      'year': '2020',
      'image': 'https://bilder.buecher.de/produkte/61/61374/61374779n.jpg',
    },
    'Vampires of Vensaya': {
      'title': 'Vampires of Vensaya',
      'author': 'Michael Jeremy Hard',
      'year': '2020',
      'image': 'https://www.inforius-bilder.de/bild/?I=i9VAgp4zcKxSzWi5lnhuWtsPfe6L09SBfd%2Boa0pjO6A%3D',
    },
    'Das Biest in ihm': {
      'title': 'Das Biest in ihm',
      'author': 'Serena Valentino',
      'year': '2019',
      'image': 'https://www.jugendbuch-couch.de/fileadmin/_processed_/7/4/csm_Das_Biest_c4b693978e.jpg',
    },
    'Keep my silent heart': {
      'title': 'Keep my silent heart',
      'author': 'Sazou G.',
      'year': '2022',
      'image': 'https://medien.umbreitkatalog.de/bildzentrale_original/978/375/653/2568.jpg',
    },
    'Ravenhall Academy I': {
      'title': 'Ravenhall Academy I',
      'author': 'Julia Kuhn',
      'year': '2023',
      'image': 'https://www.carlsen.de/sites/default/files/produkt/cover/verborgene-magie_4.jpg',
    },
  };

  @override
  Widget build(BuildContext context) {
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
          Icon(Icons.home, size: 30),
          Icon(Icons.book, size: 30),
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
          Icon(Icons.home, size: 30),
          Icon(Icons.book, size: 30),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/unreadBooks');
          }
        },
      ),
    );
  }
}
