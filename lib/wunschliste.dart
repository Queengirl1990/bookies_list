import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

void main() {
  runApp(WishListApp());
}

class WishListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wish List App',
      theme: ThemeData(
        backgroundColor: darkRed,
      ),
      home: WishListScreen(),
    );
  }
}

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wunschliste",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      backgroundColor: darkRed,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                childAspectRatio: 80 / 100, 
              ),
              itemCount: wishList.length, 
              itemBuilder: (context, index) {
                final bookKey = wishList.keys.elementAt(index); 
                return GestureDetector(
                  onTap: () {
                    // Logik zum Öffnen des Buchdetailbildschirms hinzufügen
                    // Navigator.push 
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Container(
                      width: 80,
                      height: 100,
                      child: Image.asset(
                        wishList[bookKey]!['image']!, 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
