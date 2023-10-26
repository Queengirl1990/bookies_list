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
  final List<String> productNames = ['Außerhalb der Schatten I', 'Vampires of Vensaya', 'Das Biest in ihm', 'Keep my silent heart', 'Ravenhall Academy I'];

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
                Navigator.pushNamed(context, '/bookDetails', arguments:'Buchdetails $productName');
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
