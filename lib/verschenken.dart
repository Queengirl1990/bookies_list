import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

void main() {
  runApp(GiveAwayApp());
}

class GiveAwayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Away App',
      theme: ThemeData(
        backgroundColor: darkRed,
      ),
      home: GiveAwayScreen(),
    );
  }
}

class GiveAwayScreen extends StatefulWidget {
  const GiveAwayScreen({Key? key}) : super(key: key);

  @override
  _GiveAwayScreenState createState() => _GiveAwayScreenState();
}

class _GiveAwayScreenState extends State<GiveAwayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verschenken",
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
              itemCount: giveAway.length, // Verwende die giveAway Map aus der datenbank.dart
              itemBuilder: (context, index) {
                final bookKey = giveAway.keys.elementAt(index); // Verwende die giveAway Map aus der datenbank.dart
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
                        giveAway[bookKey]!['image']!, // Verwende Image.asset für lokale Bilder
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
