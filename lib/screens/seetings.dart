import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/styles/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SeetingsScreen(),
    );
  }
}

class SeetingsScreen extends StatefulWidget {
  const SeetingsScreen({super.key});

  @override
  _SeetingsScreenState createState() => _SeetingsScreenState();
}

class _SeetingsScreenState extends State<SeetingsScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: YourBodyWidget(),
    );
  }
}

//Screen bauen
class YourBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
