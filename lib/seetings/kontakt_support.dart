import 'package:flutter/material.dart';
import 'package:bookieslist/styles/appbar.dart';
import 'package:bookieslist/styles/farbcodes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:bookieslist/widgets/bookieslist_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SupportScreen(),
    );
  }
}

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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

class YourBodyWidget extends StatefulWidget {
  @override
  _YourBodyWidgetState createState() => _YourBodyWidgetState();
}

class _YourBodyWidgetState extends State<YourBodyWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();

  String? selectedSubject;
//das kann ausgewählt werden
  final List<String> subjects = [
    "Fehler melden",
    "Feature Wunsch",
    "Lob/Kritik",
    "Anderes"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkRed,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kontakt und Support",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25.0),
              const MyDividerWithIcons(),
              SizedBox(height: 25.0),
              DropdownButtonFormField<String>(
                value: selectedSubject,
                onChanged: (value) {
                  setState(() {
                    selectedSubject = value;
                  });
                },
                items: subjects.map((String subject) {
                  return DropdownMenuItem<String>(
                    value: subject,
                    child: Text(subject),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Betreff',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  labelText: 'Nachricht',
                  fillColor: Colors.white,
                  filled: true,
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (EmailValidator.validate(_emailController.text)) {
                        print('Betreff: $selectedSubject');
                        print('Email is valid');
                        print('Message: ${_messageController.text}');
                      } else {
                        print('Invalid email address');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      minimumSize: Size(150, 50),
                    ),
                    child: Text('Senden'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
