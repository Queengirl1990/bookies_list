import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Navigation
              },
            ),
            const Text(
              "Mein Profil",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: darkRed, // Stelle sicher, dass darkRed aus styles.dart importiert ist
        elevation: 0,
      ),
      backgroundColor: darkRed, // Stelle sicher, dass darkRed aus styles.dart importiert ist
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const MyCircularAvatar(),
              const SizedBox(height: 20),
              const Text(
                "Queengirl",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Aktion einbauen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Nutze die Farbe Colors.black
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: const Text("Bearbeiten"),
              ),
              const SizedBox( // Container für die Linie
                width: 320,
                child: const Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.favorite, size: 20, color: lightGrey), 
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: lightGrey), 
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: lightGrey), 
                ],
              ),
              const SizedBox( 
                width: 320,
                child: const Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              const Text(
                "Schau dir mal wieder deine Lieblinge an",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  const MyCircularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/avatar.png',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
