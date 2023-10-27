import 'package:flutter/material.dart';

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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookiesList"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: Container(
        color: Color(0xFFAC5859), // Hintergrundfarbe des Body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/unreadBooks');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Hintergrundfarbe der Buttons
                onPrimary: Colors.black, // Schriftfarbe des Buttontextes
                elevation: 5, // Schattenstärke
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Eckenradius
                ),
              ),
              child: Text("Stapel ungelesener Bücher"),
            ),
            ElevatedButton(
              onPressed: () {
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Unread Books',
          ),
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

class UnreadBooksScreen extends StatelessWidget {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Stapel ungelesener Bücher"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: ListView(
        children: productNames.map((productName) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text(productName),
              onTap: () {
                Navigator.pushNamed(context, '/bookDetails', arguments: 'Buchdetails $productName');
              },
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Unread Books',
          ),
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

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String info = ModalRoute.of(context)!.settings.arguments as String;
    String bookTitle = info.replaceAll('Buchdetails ', '');
    String imagePath = '';

    if (bookTitle == 'Außerhalb der Schatten I') {
      imagePath = 'https://bilder.buecher.de/produkte/61/61374/61374779n.jpg';
    } else if (bookTitle == 'Vampires of Vensaya') {
      imagePath = 'https://www.inforius-bilder.de/bild/?I=i9VAgp4zcKxSzWi5lnhuWtsPfe6L09SBfd%2Boa0pjO6A%3D';
    } else if (bookTitle == 'Das Biest in ihm') {
      imagePath = 'https://www.jugendbuch-couch.de/fileadmin/_processed_/7/4/csm_Das_Biest_c4b693978e.jpg';
    } else if (bookTitle == 'Keep my silent heart') {
      imagePath = 'https://medien.umbreitkatalog.de/bildzentrale_original/978/375/653/2568.jpg';
    } else if (bookTitle == 'Ravenhall Academy I') {
      imagePath = 'https://www.carlsen.de/sites/default/files/produkt/cover/verborgene-magie_4.jpg';
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("BookDetails"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath.isNotEmpty)
              Image.network(
                imagePath,
                width: 100,
                height: 150,
              ),
            Text(info),
            Container(
              width: 150, // Setzen Sie hier die gewünschte Breite ein
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/'); // Navigiere zum HomeScreen
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFAC5859),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("Zurück zum HomeScreen"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Unread Books',
          ),
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
