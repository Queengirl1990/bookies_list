import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';
import 'bookiesList-widgets.dart';

void main() {
  runApp(const GiveAwayApp());
}

class GiveAwayApp extends StatelessWidget {
  const GiveAwayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Away App',
      theme: ThemeData(
        backgroundColor: darkRed,

      ),
      home: const GiveAwayScreen(),
    );
  }
}

class GiveAwayScreen extends StatefulWidget {
  const GiveAwayScreen({Key? key}) : super(key: key);

  @override
  _GiveAwayScreenState createState() => _GiveAwayScreenState();
}

class _GiveAwayScreenState extends State<GiveAwayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Give Away",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: darkRed,
        elevation: 0,
        actions: [
          MyCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 80 / 100,
        ),
        itemCount: giveAway.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            // Erstes Element ist der "Neues Buch hinzufügen"-Button
            return GestureDetector(
              onTap: () {
                // Hier können Sie die Funktion zum Hinzufügen eines neuen Buchs implementieren
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: darkRed,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: SizedBox(
                  width: 80,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        "Neues Buch hinzufügen",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            // Die restlichen Elemente sind die Buchcover
            final bookKey = giveAway.keys.elementAt(index - 1);
            return GestureDetector(
              onTap: () {
                // Buchdetailbildschirms
                // Navigator.push
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: SizedBox(
                  width: 80,
                  height: 100,
                  child: Image.asset(
                    giveAway[bookKey]!['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}


Widget MyCircularAvatar() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Container(
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
      ),
    ],
  );
}