import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

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
              const SizedBox(height: 50), 
              Center(
                child: SizedBox(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/images/logo.png'), 
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 320,
                  height: 40, 
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20), 
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 65, 66, 66).withOpacity(0.5), 
                        offset: const Offset(0, 3), 
                        blurRadius: 5, 
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), 
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email',
                        hintText: 'Deine Mailadresse',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 320,
                  height: 40, 
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(20), 
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 65, 66, 66).withOpacity(0.5), 
                        offset: const Offset(0, 3), 
                        blurRadius: 5, 
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), 
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
                child: const Text(
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
                      color: const Color.fromARGB(255, 65, 66, 66).withOpacity(0.5), 
                      offset: const Offset(5, 5), // Versatz des Schattens
                      blurRadius: 5, 
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    // Login
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: darkMode, fontSize: 20), 
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              const Text('Account erstellen')
            ],
          ),
        ),
      ),
    );
  }
}
