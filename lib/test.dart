import 'package:flutter/material.dart';

void main() {
  runApp(TestPageApp());
}

class TestPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(index: 1), 
    );
  }
}

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DetailPage für das Element')),
      body: Center(child: Text('Das ist das Element')),
    );
  }
}
