import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Bookie List',
    theme: ThemeData(
      primaryColor: Color(0xFFAC5859),
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/unreadBooks': (context) => UnreadBooksScreen(),
      '/bookDetails': (context) => BookDetailsScreen(),
    },
  ));
}

class HomeScreen extends StatefulWidget {
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
        title: Text("BookiesList"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFFAC5859),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/unreadBooks');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Stapel ungelesener Bücher"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Link einfügen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Wunschliste"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Link einfügen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Sonderband"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Link einfügen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Verschenken"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Link einfügen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Neue Liste anlegen"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Link einfügen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Zufallsgenerator"),
              ),
              Image.network(
                'https://www.horizont.net/news/media/16/Hugendubel--153956.jpeg',
                width: 400,
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Color(0xFFAC5859),
        color: Colors.white,
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
  int _selectedIndex = 1;

  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      Navigator.pushNamed(context, '/');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/unreadBooks');
    }
  }

  final List<String> productNames = [
    'Außerhalb der Schatten I',
    'Vampires of Vensaya',
    'Das Biest in ihm',
    'Keep my silent heart',
    'Ravenhall Academy I',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stapel ungelesener Bücher"),
        backgroundColor: Color(0xFFAC5859),
      ),
      backgroundColor: Color(0xFFAC5859), // Hintergrundfarbe
      body: ListView(
        children: productNames.map((productName) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text(productName),
              onTap: () {
                Navigator.pushNamed(context, '/bookDetails',
                    arguments: 'Buchdetails $productName');
              },
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Color(0xFFAC5859),
        color: Colors.white,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.book, size: 30),
        ],
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  String _info = '';
  String _bookTitle = '';
  String _imagePath = '';

  @override
  Widget build(BuildContext context) {
    _info = ModalRoute.of(context)!.settings.arguments as String;
    _bookTitle = _info.replaceAll('Buchdetails ', '');

    if (_bookTitle == 'Außerhalb der Schatten I') {
      _imagePath = 'https://bilder.buecher.de/produkte/61/61374/61374779n.jpg';
    } else if (_bookTitle == 'Vampires of Vensaya') {
      _imagePath = 'https://www.inforius-bilder.de/bild/?I=i9VAgp4zcKxSzWi5lnhuWtsPfe6L09SBfd%2Boa0pjO6A%3D';
    } else if (_bookTitle == 'Das Biest in ihm') {
      _imagePath = 'https://www.jugendbuch-couch.de/fileadmin/_processed_/7/4/csm_Das_Biest_c4b693978e.jpg';
    } else if (_bookTitle == 'Keep my silent heart') {
      _imagePath = 'https://medien.umbreitkatalog.de/bildzentrale_original/978/375/653/2568.jpg';
    } else if (_bookTitle == 'Ravenhall Academy I') {
      _imagePath = 'https://www.carlsen.de/sites/default/files/produkt/cover/verborgene-magie_4.jpg';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Buch Details"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_imagePath.isNotEmpty)
              Image.network(
                _imagePath,
                width: 300,
                height: 150,
              ),
            Text(_info),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Color(0xFFAC5859),
        color: Colors.white,
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
