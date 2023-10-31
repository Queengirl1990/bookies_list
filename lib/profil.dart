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
    TextStyle appBarTextStyle = TextStyle(
      fontFamily: 'DancingScript',
      fontWeight: FontWeight.bold,
      fontSize: 24, // Ändere die Schriftgröße nach Bedarf
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mein Profil",
          style: appBarTextStyle, // Hier wird der Textstil angewendet
        ),
        backgroundColor: Color(0xFFAC5859),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ihr Name"),
                accountEmail: Text("ihre@email.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                  ),
                ),
              ),
              ListTile(
                title: Text("Option 1"),
                onTap: () {
                  // Aktion für Option 1
                },
              ),
              ListTile(
                title: Text("Option 2"),
                onTap: () {
                  // Aktion für Option 2
                },
              ),
              // Weitere Einträge für den Drawer hinzufügen
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFFAC5859),
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
      alignment: Alignment.topRight, // Positionierung des Avatars
      margin: EdgeInsets.only(top: 20, right: 20), // Abstand vom oberen und rechten Rand
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [ // Schatten hinzufügen
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Farbe und Deckkraft des Schattens
            spreadRadius: 2, // Streubreite des Schattens
            blurRadius: 5, // Unschärferadius des Schattens
            offset: Offset(0, 0), // Verschiebung des Schattens (horizontal, vertikal)
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
