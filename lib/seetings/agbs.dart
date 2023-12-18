import 'package:flutter/material.dart';
import 'package:bookieslist/styles/farbcodes.dart';
import 'package:bookieslist/styles/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AGBsScreen(),
    );
  }
}

class AGBsScreen extends StatefulWidget {
  const AGBsScreen({super.key});

  @override
  _AGBsScreenState createState() => _AGBsScreenState();
}

class _AGBsScreenState extends State<AGBsScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: YourBodyWidget(),
      backgroundColor: darkRed,
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
