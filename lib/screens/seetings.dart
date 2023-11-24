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
              _buildElevatedButton(context, "Konto löschen", ''),
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
        if (text == "Abmelden") {
          _showLogoutDialog(context);
        } else if (text == "Konto löschen") {
          _showDeleteAccountDialog(context);
        } else if (route.isNotEmpty) {
          Navigator.pushNamed(context, route);
        } else {
          // löschen Logik
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
        primary: Colors.white,
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

  Future<void> _showLogoutDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Abmelden'),
          content: const Text('Du bist dabei, dich abzumelden.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Abbrechen'),
            ),
            TextButton(
              onPressed: () {
                // Abmeldung implementieren
                // Zum Beispiel: Navigator.of(context).pop(); um den Dialog zu schließen
              },
              child: const Text('Abmelden'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDeleteAccountDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Achtung! Du bist dabei, dein Konto zu löschen',
            style: TextStyle(color: Colors.red),
          ),
          content: Column(
            children: [
              const Divider(),
              const Text(
                'Wenn du dein Konto löschst, geht deine Bibliothek und dein Lesefortschritt verloren.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Abbrechen'),
            ),
            TextButton(
              onPressed: () {
                // Löschen des Kontos implementieren
                // Zum Beispiel: Navigator.of(context).pop(); um den Dialog zu schließen
              },
              child: const Text('Konto endgültig löschen'),
            ),
          ],
        );
      },
    );
  }
}
