import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/libary/unread-booksDatenbank.dart';
import '../widgets/bookieslist-widgets.dart';

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
  const GiveAwayScreen({super.key});

  @override
  _GiveAwayScreenState createState() => _GiveAwayScreenState();
}

class _GiveAwayScreenState extends State<GiveAwayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wunschliste",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Pfad
            Navigator.pop(context);
          },
        ),
        actions: [
          myCircularAvatar(),
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
            // buch hinzufügen
            return GestureDetector(
              onTap: () {
                // weiterleitung
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
                child: const SizedBox(
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
            final bookKey = giveAway.keys.elementAt(index - 1);
            return GestureDetector(
              onTap: () {
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
