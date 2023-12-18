import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/widgets/bookieslist_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewBookAdd(),
    );
  }
}

class NewBookAdd extends StatefulWidget {
  const NewBookAdd({super.key});

  @override
  _NewBookAddState createState() => _NewBookAddState();
}

class _NewBookAddState extends State<NewBookAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          myCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            "Neues Buch hinzufügen",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          MyDividerWithIcons(),
        ],
      ),
    );
  }
}
