import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';
import 'bookiesList-widgets.dart';

void main() {
  runApp(const LimitedEditionApp());
}

class LimitedEditionApp extends StatelessWidget {
  const LimitedEditionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Limited Edition',
      theme: ThemeData(
        backgroundColor: darkRed,
      ),
      home: const LimitedEditionScreen(),
    );
  }
}

class LimitedEditionScreen extends StatefulWidget {
  const LimitedEditionScreen({Key? key}) : super(key: key);

  @override
  _LimitedEditionScreenState createState() => _LimitedEditionScreenState();
}

class _LimitedEditionScreenState extends State<LimitedEditionScreen> {
  void addNewBook() {
    // Hier die Logik für das Hinzufügen eines neuen Buches implementieren
    // Zum Beispiel: Navigator.push(...) für das Hinzufügen einer neuen Buchseite
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Implementiere die Funktionalität für den Zurück-Pfeil hier
              },
            ),
            Text(
              "Limited Edition",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          myCircularAvatar(),
        ],
        backgroundColor: darkRed,
        elevation: 0,
      ),
      backgroundColor: darkRed,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 80 / 100,
        ),
        itemCount: limitedEdition.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return GestureDetector(
              onTap: addNewBook,
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
            final bookKey = limitedEdition.keys.elementAt(index - 1);
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
                    limitedEdition[bookKey]!['image']!,
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