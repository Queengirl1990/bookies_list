import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkRed, 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50), 
              Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/images/logo.png'), // Pfad zu Ihrem Asset
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 320,
                  height: 40, // Höhe der Eingabefelder anpassen
                  decoration: BoxDecoration(
                    color: Colors.white, // Hintergrundfarbe auf Weiß setzen
                    borderRadius: BorderRadius.circular(20), // Runde Ecken
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5), // Schattenfarbe
                        offset: Offset(0, 3), // Versatz des Schattens
                        blurRadius: 5, // Stärke des Schattens
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10), // Innenpolsterung anpassen
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15), // Abstand zwischen den Eingabefeldern
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 320,
                  height: 40, // Höhe der Eingabefelder anpassen
                  decoration: BoxDecoration(
                    color: Colors.white, // Hintergrundfarbe auf Weiß setzen
                    borderRadius: BorderRadius.circular(20), // Runde Ecken
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5), // Schattenfarbe
                        offset: Offset(0, 3), // Versatz des Schattens
                        blurRadius: 5, // Stärke des Schattens
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10), // Innenpolsterung anpassen
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Password',
                        hintText: 'Enter secure password',
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // vergessen Screen
                },
                child: Text(
                  'Passwort vergessen',
                  style: TextStyle(color: darkMode, fontSize: 15),
                ),
              ),
              Container(
                width: 320,
                height: 40, 
                decoration: BoxDecoration(
                  color: snowWhite, 
                  borderRadius: BorderRadius.circular(20), 
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 60, 60, 61).withOpacity(0.5), // Schattenfarbe
                      offset: Offset(5, 5), // Versatz des Schattens
                      blurRadius: 5, // Stärke des Schattens
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    // Login
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: darkMode, fontSize: 20), 
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Text('Account erstellen')
            ],
          ),
        ),
      ),
    );
  }
}
