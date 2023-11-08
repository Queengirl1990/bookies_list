import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'styles.dart';
import 'datenbank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomGeneratorScreen(),
    );
  }
}

class RandomGeneratorScreen extends StatefulWidget {
  @override
  _RandomGeneratorScreenState createState() => _RandomGeneratorScreenState();
}

class _RandomGeneratorScreenState extends State<RandomGeneratorScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Zurücknavigieren
          },
        ),
        actions: [
          MyCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 320,
            child: Divider(
              color: Colors.white,
              height: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 20, color: Colors.grey), // Ändere lightGrey zu Colors.grey
              SizedBox(width: 10),
              Icon(Icons.favorite, size: 20, color: Colors.grey), // Ändere lightGrey zu Colors.grey
              SizedBox(width: 10),
              Icon(Icons.favorite, size: 20, color: Colors.grey), // Ändere lightGrey zu Colors.grey
            ],
          ),
          const SizedBox(
            width: 320,
            child: Divider(
              color: Colors.white,
              height: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Was möchtest du heute lesen",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3.17,
              ),
              itemCount: 27,
              itemBuilder: (context, index) {
                return MyButton(
                  text: buttonTitles[index],
                  onPressed: () {
                    // Auswahllogik implementieren
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          MyButton(
            text: "Generator Starten",
            onPressed: () {
              // Funktion
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPageIndex,
        backgroundColor: darkRed,
        color: darkMode,
        buttonBackgroundColor: darkMode,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 1) {
              Navigator.pushNamed(context, '/unreadBooks');
            }
          });
        },
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.menu_book, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.help_outline, size: 30, color: darkRed), 
        ],
      ),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  const MyCircularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/avatar.png',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  MyButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Container(
          width: 200,
          height: 40,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}