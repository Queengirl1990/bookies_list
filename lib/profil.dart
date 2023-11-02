import 'package:flutter/material.dart';

// Definiere eine Konstante für die Farbe
const Color darkRed = Color(0xFFAC5859);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: darkRed, // Verwende die definierte Farbe
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle appBarTextStyle = TextStyle(
      fontFamily: 'DancingScript',
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mein Profil",
          style: appBarTextStyle, // Hier wird der Textstil angewendet
        ),
        backgroundColor: darkRed, // Verwende die definierte Farbe
        elevation: 0,
      ),
      body: Container(
        color: darkRed, // Verwende die definierte Farbe
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Avatar rechts ausrichten
              children: [
                MyCircularAvatar(),
              ],
            ),
            // Weitere Widgets hier hinzufügen
          ],
        ),
      ),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight, // Positionierung des Avatars
      margin: const EdgeInsets.only(top: 20, right: 20), // Abstand vom oberen und rechten Rand
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [ // Schatten hinzufügen
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Farbe und Deckkraft des Schattens
            spreadRadius: 2, // Streubreite des Schattens
            blurRadius: 5, // Unschärferadius des Schattens
            offset: const Offset(0, 0), // Verschiebung des Schattens (horizontal, vertikal)
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
}
