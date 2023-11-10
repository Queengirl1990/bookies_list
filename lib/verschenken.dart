import 'package:flutter/material.dart';
import 'styles.dart';
import 'datenbank.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 80 / 100,
              ),
              itemCount: giveAway.length, 
              itemBuilder: (context, index) {
                final bookKey = giveAway.keys.elementAt(index); 
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
              },
            ),
          ),
        ],
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
