import 'package:flutter/material.dart';
import '../styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../datenbank.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyProfilPage(),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  const MyCircularAvatar({super.key});

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

class MyProfilPage extends StatelessWidget {
  const MyProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: darkRed,
          elevation: 0, // Entferne den Schatten der AppBar
          actions: const [],
          title: const Text(
            "Mein Profil",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      backgroundColor: darkRed,
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
                  backgroundColor: darkMode,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: const Text("Bearbeiten"),
              ),
              const SizedBox(
                width: 320,
                child: Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 20, color: lightGrey),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: lightGrey),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, size: 20, color: lightGrey),
                ],
              ),
              const SizedBox(
                width: 320,
                child: Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                "Schau dir mal wieder deine Lieblinge an",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

CarouselSlider.builder(
  itemCount: bookInfoMap.length,
  options: CarouselOptions(
    height: 300,
    viewportFraction: 0.4,
    enableInfiniteScroll: false,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 2),
  ),
  itemBuilder: (BuildContext context, int index, int realIndex) {
    final bookInfo = bookInfoMap.values.elementAt(index);
    final imagePath = bookCoverAssets[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: () {
          _showImageDialog(context, bookInfo, imagePath);
        },
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 150,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  },
),

SizedBox(
  width: double.infinity, // Setze die maximale Breite für die Buttons
  child: ElevatedButton(
    onPressed: () {
      // Aktion für den Button "Gelesene Bücher"
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Hintergrundfarbe des Buttons
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: guelden), // Umrandungsfarbe
      ),
      elevation: 10, // Ändere die Elevation (Schatten) hier nach Bedarf
    ),
    child: const Text(
      "Gelesene Bücher",
      style: TextStyle(color: guelden), // Schriftfarbe des Buttons
    ),
  ),
),

SizedBox(height: 10), // Füge eine Höhe zwischen den Buttons hinzu

SizedBox(
  width: double.infinity, // Setze die maximale Breite für die Buttons
  child: ElevatedButton(
    onPressed: () {
      // Aktion für den Button "Deine Genres"
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Hintergrundfarbe des Buttons
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: guelden), // Umrandungsfarbe
      ),
      elevation: 10, // Ändere die Elevation (Schatten) hier nach Bedarf
    ),
    child: const Text(
      "Deine Genres",
      style: TextStyle(color: guelden), // Schriftfarbe des Buttons
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }

  void _showImageDialog(
      BuildContext context, BookInfo bookInfo, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text('Titel: ${bookInfo.title}'),
              Text('Autor: ${bookInfo.author}'),
              Text('Genre: ${bookInfo.genre}'),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                //Aktion für "Jetzt lesen"
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: darkRed,
                elevation: 5,
              ),
              child: Text(
                bookInfo.buttonLabel,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Schließen',
                style: TextStyle(color: darkRed),
              ),
            ),
          ],
        );
      },
    );
  }
}
