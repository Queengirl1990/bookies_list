import 'package:flutter/material.dart';
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

class RandomGeneratorScreen extends StatelessWidget {
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
        children: [
          const SizedBox(height: 20),
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
              Icon(Icons.favorite, size: 20, color: lightGrey),
              SizedBox(width: 10),
              Icon(Icons.favorite, size: 20, color: lightGrey),
              SizedBox(width: 10),
              Icon(Icons.favorite, size: 20, color: lightGrey),
            ],
          ),
          const SizedBox(
            width: 320,
            child: Divider(
              color: Colors.white,
              height: 20,
            ),
          ),
          const SizedBox(height: 10),
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
          width: 95,
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

