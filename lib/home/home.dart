import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../profil/profil.dart';
import '../widgets/bookieslist_widgets.dart';
import '../styles/farbcodes.dart';
import '../unreadBooks/sub.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkRed,
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfilPage()),
              );
            },
            child: myCircularAvatar(),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: darkRed,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  color: darkRed,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Aktueller Lesestoff",
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          color: snowWhite,
                        ),
                      ),
                      const SizedBox(height: 20),
                      bookInfoContainer(0.5, () {
                        // Logik
                      }),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  buttonMinWidth: 320,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/unreadBooks');
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Stapel ungelesener Bücher",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Wunschliste",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Sonderband",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Verschenken",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Neue Liste anlegen",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Zufallsgenerator",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Link einfügen
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(snowWhite),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Center(
                        child: Text(
                          "Kalender",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed,
        color: darkMode,
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/unreadBooks');
                break;
              case 2:
                Navigator.pushNamed(context, '/settings');
                break;
              case 3:
                Navigator.pushNamed(context, '/randomGenerator');
                break;
            }
          });
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.menu_book, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.help_outline, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
