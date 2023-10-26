import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'HomeScreen',
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
        title: const Text("HomeScreen"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/unreadBooks');
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFAC5859),
          ),
          child: Text("Gehe zu UnreadBooks"),
        ),
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
    'Ravenhall Academy I'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("UnreadBooks"),
        backgroundColor: Color(0xFFAC5859),
      ),
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
      imagePath =
          'https://www.inforius-bilder.de/bild/?I=i9VAgp4zcKxSzWi5lnhuWtsPfe6L09SBfd%2Boa0pjO6A%3D';
    } else if (bookTitle == 'Das Biest in ihm') {
      imagePath =
          'https://www.jugendbuch-couch.de/fileadmin/_processed_/7/4/csm_Das_Biest_c4b693978e.jpg';
    } else if (bookTitle == 'Keep my silent heart') {
      imagePath =
          'https://medien.umbreitkatalog.de/bildzentrale_original/978/375/653/2568.jpg';
    } else if (bookTitle == 'Ravenhall Academy I') {
      imagePath =
          'https://www.carlsen.de/sites/default/files/produkt/cover/verborgene-magie_4.jpg';}
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
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
                width: 100, // Ändere die Breite nach Bedarf
                height: 150, // Ändere die Höhe nach Bedarf
              ),
            Text(info),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Navigiere zum HomeScreen
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFAC5859),
              ),
              child: Text("Zurück zum HomeScreen"),
            ),
          ],
        ),
      ),
    );
  }
}

