import 'package:flutter/material.dart';

void main() {
  runApp(const TestPageApp());
}

class TestPageApp extends StatelessWidget {
  const TestPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      appBar: AppBar(title: const Text('DetailPage für das Element')),
      body: const Center(child: Text('Das ist das Element')),
    );
  }
}
