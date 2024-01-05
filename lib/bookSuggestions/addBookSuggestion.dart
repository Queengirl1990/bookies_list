import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/widgets/bookieslist_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewBookAdd(),
    );
  }
}

class NewBookAdd extends StatefulWidget {
  const NewBookAdd({super.key});

  @override
  _NewBookAddState createState() => _NewBookAddState();
}

class _NewBookAddState extends State<NewBookAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          myCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "Neues Buch hinzufügen",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Zentriert die Elemente
              children: [
                Container(
                  height: 40,
                  width: 280, // Anpassung der Breite des Inputfelds
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(Icons.search, color: lightGrey),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: lightGrey),
                          decoration: InputDecoration(
                            hintText: "Suchen...",
                            hintStyle: TextStyle(
                              color: lightGrey.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Abstand zInputfeld und dem Button
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: darkRed,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // verlinkung
                    },
                    child: Image.asset(
                      'assets/images/scanner-logo.png',
                      width: 40,
                      height: 40,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.transparent, // Hintergrundfarbe transparent
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MyDividerWithIcons(),
        ],
      ),
    );
  }
}
