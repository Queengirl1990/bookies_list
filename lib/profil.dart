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
        backgroundColor: Color(0xFFAC5859),
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Color(0xFFAC5859),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ihr Name"),
                accountEmail: Text("ihre@email.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFAC5859),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCustomText(),
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
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/avatar.png')),
        border: Border.all(color: Colors.white, width: 2.0),
        shape: BoxShape.circle,
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
        fontFamily: "DancingScript-Bold",
        color: Colors.white,
      ),
    );
  }
}
