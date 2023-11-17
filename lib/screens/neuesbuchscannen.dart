import 'package:flutter/material.dart';
import '../styles.dart';
import 'package:bookieslist/widgets/bookieslist-widgets.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  bool isScanning = false;
  String scannedResult = '';

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
            onPressed: () async {
              var res = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleBarcodeScannerPage(),
                ),
              );
              setState(() {
                if (res is String) {
                  scannedResult = res;
                }
              });
            },
            child: const Text('Open Scanner'),
          ),
          Text('Scanned Result: $scannedResult'),
        ],
      ),
    );
  }
}

class SimpleBarcodeScannerPage extends StatefulWidget {
  const SimpleBarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _SimpleBarcodeScannerPageState createState() =>
      _SimpleBarcodeScannerPageState();
}

class _SimpleBarcodeScannerPageState
    extends State<SimpleBarcodeScannerPage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var res = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleBarcodeScannerPage(),
                  ),
                );
                setState(() {
                  if (res is String) {
                    result = res;
                  }
                });
              },
              child: const Text('Open Scanner'),
            ),
            Text('Barcode Result: $result'),
          ],
        ),
      ),
    );
  }
}