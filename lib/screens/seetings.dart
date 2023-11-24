import 'package:flutter/material.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/styles/appbar.dart';
import 'package:bookieslist/widgets/bookieslist_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: YourBodyWidget(),
    );
  }
}

class YourBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkRed,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: darkRed,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Einstellungen",
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: snowWhite,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const MyDividerWithIcons(),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildElevatedButton(context, "Impressum", ''),
              _buildElevatedButton(context, "AGBs", ''),
              _buildElevatedButton(context, "Newsletter", ''),
              _buildElevatedButton(context, "Datenschutz", ''),
              _buildElevatedButton(context, "Kontakt & Support", ''),
              _buildElevatedButton(context, "Lizenzen", ''),
              _buildElevatedButton(context, "Abmelden", ''),
              _buildElevatedButton(context, "Konto löschen", '')
            ],
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildElevatedButton(
      BuildContext context, String text, String route) {
    return ElevatedButton(
      onPressed: () {
        if (route.isNotEmpty) {
          Navigator.pushNamed(context, route);
        } else {
          // Handle button click logic
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        primary: snowWhite,
        onPrimary: Colors.black,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
