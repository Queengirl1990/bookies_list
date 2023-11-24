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
      home: NewsletterScreen(),
    );
  }
}

class NewsletterScreen extends StatefulWidget {
  const NewsletterScreen({super.key});

  @override
  _NewsletterScreenState createState() => _NewsletterScreenState();
}

class _NewsletterScreenState extends State<NewsletterScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: NewsletterWidget(),
      backgroundColor: darkRed,
    );
  }
}

//Screen bauen
class NewsletterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
