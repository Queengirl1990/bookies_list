import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

void main() {
  runApp(LimitedEditionApp());
}

class LimitedEditionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Limited Edition App',
      theme: ThemeData(
        backgroundColor: darkRed,
      ),
      home: LimitedEditionScreen(),
    );
  }
}

class LimitedEditionScreen extends StatefulWidget {
  const LimitedEditionScreen({Key? key}) : super(key: key);

  @override
  _LimitedEditionScreenState createState() => _LimitedEditionScreenState();
}

class _LimitedEditionScreenState extends State<LimitedEditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Limited Edition",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: darkRed,
        elevation: 0,
      ),
      backgroundColor: darkRed,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 80 / 100,
              ),
              itemCount: limitedEdition.length, 
              itemBuilder: (context, index) {
                final bookKey = limitedEdition.keys.elementAt(index);
                return GestureDetector(
                  onTap: () {
                    //Buchdetailbildschirms hinzufügen
                    // Navigator.push 
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Container(
                      width: 80,
                      height: 100,
                      child: Image.asset(
                        limitedEdition[bookKey]!['image']!, 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
