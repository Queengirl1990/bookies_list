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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch, // Änderung hier
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/unreadBooks');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Gehe zu deinem SuB"),
          ),
          ElevatedButton(
            onPressed: () {
              // Füge deine Logik für "Wunschliste" hier ein
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Wunschliste"),
          ),
          ElevatedButton(
            onPressed: () {
              // Füge deine Logik für "Sonderband" hier ein
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Sonderband"),
          ),
          ElevatedButton(
            onPressed: () {
              // Füge deine Logik für "Verschenken" hier ein
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Verschenken"),
          ),
          ElevatedButton(
            onPressed: () {
              // Füge deine Logik für "Neue Liste anlegen" hier ein
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Neue Liste anlegen"),
          ),
          ElevatedButton(
            onPressed: () {
              // Füge deine Logik für "Zufallsgenerator" hier ein
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFAC5859),
            ),
            child: Text("Zufallsgenerator"),
          ),
        ],
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
    // ... (your book data here)
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
            if (image != null && image.isNotEmpty)
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
