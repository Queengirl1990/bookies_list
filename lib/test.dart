import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

const Color darkRed = Color(0xFFAC5859);
const Color darkMode = Color(0xFF343131); // Neue Farbe für Dark Mode

void main() {
  runApp(const Mapz());
}

class Mapz extends StatelessWidget {
  const Mapz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationWrapper(),
      theme: ThemeData.light(), // Dunkelmodus entfernt
    );
  }
}

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({Key? key}) : super(key: key);

  @override
  State<NavigationWrapper> createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed, 
        color: darkMode, 
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.amber),
          Icon(Icons.menu_book, size: 30, color: Colors.amber),
          Icon(Icons.settings, size: 30, color: Colors.amber),
          Icon(Icons.help_outline, size: 30, color: Colors.amber),
        ],
      ),
      body: SafeArea(
        child: <Widget>[
          const StyledPage(),
          const MapPage(),
          const StatsPagewithlist(),
          const ProfilePage(),
        ][currentPageIndex],
      ),
    );
  }
}

class StyledPage extends StatelessWidget {
  const StyledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: darkRed, // Hintergrundfarbe auf darkRed ändern
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BookiesList",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.w900,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            Text(
              "Aktueller Lesestoff",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            _statusBox("Aktualisieren"),
            const SizedBox(height: 20),
            const SizedBox(
              height: 150,
              child: Placeholder(color: Colors.white), // Hintergrund der Placeholder weiß
            ),
            const SizedBox(height: 40),
            Text(
              "Neue Aktivitäten",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 400,
              child: Placeholder(color: Colors.white), // Hintergrund der Placeholder weiß
            ),
          ],
        ),
      ),
    );
  }
}

Widget _statusBox(String buttonText) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      border: Border.all(color: Colors.grey), // Grauer Rand
      boxShadow: [
        BoxShadow(
          color: Colors.grey, // Schattenfarbe
          offset: const Offset(0, 2),
          blurRadius: 4,
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Life after you",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black, // Schriftfarbe Schwarz
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Mandy J. Hard",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Kategorie",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
            Text(
              "New Adult",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
            Text(
              '350 von 415 Seiten',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Aktion beim Klicken des Buttons
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white), 
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 120,
              child: Image.asset('assets/images/life_after.jpg'),
            ),
          ],
        ),
      ],
    ),
  );
  }


class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: darkRed, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(color: Colors.white), // Hintergrund der Placeholder weiß
          ),
          Text(
            'Coming Soon',
            style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white), // Textfarbe auf Weiß ändern
          ),
          Text(
            'Coming Soon!',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Textfarbe auf Weiß ändern
          ),
        ],
      ),
    );
  }
}

class StatsPagewithlist extends StatefulWidget {
  const StatsPagewithlist({Key? key}) : super(key: key);

  @override
  _StatsPagewithlistState createState() => _StatsPagewithlistState();
}

class _StatsPagewithlistState extends State<StatsPagewithlist> {
  final List<String> items = List.generate(50, (i) => "Artikel $i");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkRed, // Hintergrundfarbe auf darkRed ändern
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              style: TextStyle(color: Colors.white), // Textfarbe auf Weiß ändern
            ),
          );
        },
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: darkRed, // Hintergrundfarbe auf darkRed ändern
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(color: Colors.white), // Hintergrund der Placeholder weiß
          ),
          Text(
            'Profilseite',
            style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white), // Textfarbe auf Weiß ändern
          ),
          Text(
            'Demnächst verfügbar!',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Textfarbe auf Weiß ändern
          ),
        ],
      ),
    );
  }
}
