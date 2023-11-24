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
      home: YourGenresScreen(),
    );
  }
}

class YourGenresScreen extends StatefulWidget {
  const YourGenresScreen({super.key});

  @override
  _YourGenresScreenState createState() => _YourGenresScreenState();
}

class _YourGenresScreenState extends State<YourGenresScreen> {
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
