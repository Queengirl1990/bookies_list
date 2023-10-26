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
        title: Text("HomeScreen"),
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
  final List<Map<String, String>> books = [
    {
      'title': 'Außerhalb der Schatten',
      'author': 'MJ Hard',
      'year': '2020',
      'image': 'https://bilder.buecher.de/produkte/61/61374/61374779n.jpg',
    },
    {
      'title': 'Vampires of Vensaya',
      'author': 'Michael Jeremy Hard',
      'year': '2020',
      'image': 'https://www.inforius-bilder.de/bild/?I=i9VAgp4zcKxSzWi5lnhuWtsPfe6L09SBfd%2Boa0pjO6A%3D',
    },
    {
      'title': 'Das Biest in ihm',
      'author': 'Serena Valentino',
      'year': '2019',
      'image': 'https://www.jugendbuch-couch.de/fileadmin/_processed_/7/4/csm_Das_Biest_c4b693978e.jpg',
    },
    {
      'title': 'Keep my silent heart',
      'author': 'Sazou G.',
      'year': '2022',
      'image': 'https://medien.umbreitkatalog.de/bildzentrale_original/978/375/653/2568.jpg',
    },
    {
      'title': 'Ravenhall Academy I',
      'author': 'Julia Kuhn',
      'year': '2023',
      'image': 'https://www.carlsen.de/sites/default/files/produkt/cover/verborgene-magie_4.jpg',
    },
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
        title: Text("UnreadBooks"),
        backgroundColor: Color(0xFFAC5859),
      ),
      body: ListView(
        children: books.map((book) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text(book['title']!),
              subtitle: Text('${book['author']}, ${book['year']}'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/bookDetails',
                  arguments: {
                    'title': book['title'],
                    'author': book['author'],
                    'year': book['year'],
                    'image': book['image'],
                  },
                );
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
    Map<String, dynamic> bookInfo = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String title = bookInfo['title'];
    String author = bookInfo['author'];
    String year = bookInfo['year'];
    String image = bookInfo['image'];

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
            if (image.isNotEmpty)
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.network(
                    image,
                    width: 100,
                    height: 150,
                  ),
                ],
              ),
            Text('Buchdetails:'),
            Text('Titel: $title'),
            Text('Autor: $author'),
            Text('Erscheinungsjahr: $year'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Navigiere zum HomeScreen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFAC5859),
              ),
              child: Text("Zurück zum HomeScreen"),
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
