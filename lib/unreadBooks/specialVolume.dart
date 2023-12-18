import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/libary/unread_books_datenbank.dart';
import '../widgets/bookieslist_widgets.dart';

void main() {
  runApp(const LimitedEditionApp());
}

class LimitedEditionApp extends StatelessWidget {
  const LimitedEditionApp({super.key});

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
  const LimitedEditionScreen({super.key});

  @override
  _LimitedEditionScreenState createState() => _LimitedEditionScreenState();
}

class _LimitedEditionScreenState extends State<LimitedEditionScreen> {
  void addNewBook() {
    // neues Buch
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Pfad
              },
            ),
            const Text(
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
