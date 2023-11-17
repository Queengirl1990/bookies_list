import 'package:flutter/material.dart';
import '../styles.dart';
import 'package:bookieslist/widgets/bookieslist-widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewBookScann(),
    );
  }
}

class NewBookScann extends StatefulWidget {
  const NewBookScann({super.key});

  @override
  _NewBookScannState createState() => _NewBookScannState();
}

class _NewBookScannState extends State<NewBookScann> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          myCircularAvatar(), // myCircularAvatar bleibt oben rechts
        ],
      ),
      backgroundColor: darkRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Neues Buch hinzufügen",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/scanner-logo.png',
              width: 100, // Passen Sie die Breite nach Bedarf an
              height: 100, // Passen Sie die Höhe nach Bedarf an
            ),
          ),
          const MyDividerWithIcons(),
        ],
      ),
    );
  }
}
