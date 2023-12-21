import 'package:flutter/material.dart';
import 'package:bookieslist/home/home.dart';
import 'package:bookieslist/unreadBooks/sub.dart';

void main() {
  print('App gestartet');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookiesList',
      initialRoute: '/home',
      routes: {
        '/screen1': (context) => const BookiesList(),
        '/screen2': (context) => UnreadBooksApp(),
        // Für neue Routen
      },
    );
  }
}
