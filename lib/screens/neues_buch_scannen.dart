import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/widgets/bookieslist_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewBookScann(),
    );
  }
}

class NewBookScann extends StatefulWidget {
  const NewBookScann({Key? key}) : super(key: key);

  @override
  _NewBookScannState createState() => _NewBookScannState();
}

class _NewBookScannState extends State<NewBookScann> {
  String scannedCode = '';

  Future<void> scanBarcode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Hintergrundfarbe des Scanners
      'Abbrechen', // Abbruchtext
      true, // Taschenlampe aktivieren
      ScanMode.BARCODE, // Scanner-Modus
    );

    if (!mounted) return;

    setState(() {
      scannedCode = code;
      // Hier können Sie die Logik für das Hinzufügen des gescannten Buches implementieren.
    });
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Neues Buch hinzufügen",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/scanner-logo.png',
              width: 100,
              height: 100,
            ),
          ),
          const MyDividerWithIcons(),
          ElevatedButton(
            onPressed: () => scanBarcode(),
            child: const Text('Barcode scannen'),
          ),
        ],
      ),
    );
  }
}
