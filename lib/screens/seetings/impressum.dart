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
      home: LegalNoticeScreen(),
    );
  }
}

class LegalNoticeScreen extends StatefulWidget {
  const LegalNoticeScreen({super.key});

  @override
  _LegalNoticeScreenState createState() => _LegalNoticeScreenState();
}

class _LegalNoticeScreenState extends State<LegalNoticeScreen> {
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
