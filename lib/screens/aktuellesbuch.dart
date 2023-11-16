import 'package:flutter/material.dart';
import '../styles.dart';
import '../libary/bookiesList-widgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrentlyReadingScreen(),
    );
  }
}

class CurrentlyReadingScreen extends StatefulWidget {
  const CurrentlyReadingScreen({super.key});

  @override
  _CurrentlyReadingScreenState createState() => _CurrentlyReadingScreenState();
}

class _CurrentlyReadingScreenState extends State<CurrentlyReadingScreen> {
  int currentPageIndex = 0;

  Widget myCircularAvatar() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/avatar.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double bookProgress = 0.85; // Fortschritt auf 85%

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // pfad 
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
          myCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Aktueller Lesestoff",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),

          bookInfoContainer(bookProgress),

          const MyDividerWithIcons(),
        ],
      ),
    );
  }
}
