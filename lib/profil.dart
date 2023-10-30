import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFFAC5859),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilder und Schriftarten"),
        backgroundColor: Color(0xFFAC5859), // Hintergrundfarbe der AppBar
      ),
      body: Container(
        color: Color(0xFFAC5859), // Hintergrundfarbe des gesamten body
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCircularAvatar(),
              SizedBox(height: 16),
              MyCustomText(), // Hier muss die Instanz von MyCustomText mit () erstellt werden
            ],
          ),
        ),
      ),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/avatar.png')),
        border: Border.all(color: Colors.white, width: 5.0),
        shape: BoxShape.circle, // Korrektur hier: shape statt borderRadius
      ),
    );
  }
}

class MyCustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Mein Profil",
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: "DancingScript-Regular",
        color: Colors.white,
      ),
    );
  }
}