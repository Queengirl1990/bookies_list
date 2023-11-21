import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../styles/farbcodes.dart';
import '../widgets/bookieslist-widgets.dart';
import '../styles/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrentlyReadingScreen(),
    );
  }
}

class CurrentlyReadingScreen extends StatefulWidget {
  const CurrentlyReadingScreen({super.key});

  @override
  _CurrentlyReadingScreenState createState() => _CurrentlyReadingScreenState();
}

class _CurrentlyReadingScreenState extends State<CurrentlyReadingScreen> {
  int currentPageIndex = 0;
  double initialRating = 0.0;

  @override
  Widget build(BuildContext context) {
    double bookProgress = 0.85;

    return Scaffold(
      appBar: customAppBar(context),
      backgroundColor: darkRed,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Aktueller Lesestoff",
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.normal,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const MyDividerWithIcons(),
            const SizedBox(height: 20),
            Container(
              child: bookInfoContainer(bookProgress),
            ),
            const SizedBox(height: 20),
            Center(
              child: RatingBar.builder(
                initialRating: initialRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30.0,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: guelden,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fortsetzung der fantastischen Saga um Wicca, Hexen und Strigoi\n\nDie Große Göttin gibt uns nur das, wofür wir auch zu kämpfen bereit sind. Valea hat ihr Bestes gegeben, um den Prinzipien der Wicca treu zu bleiben. Sie hat gekämpft, ihr wurde das Herz gebrochen und sie verlor mehr, als sie ertragen konnte. Doch nun sind fast zwei Jahre seit den verheerenden Ereignissen in Ardeal vergangen. Zwei Jahre, in denen sie sich in der Welt der Menschen versteckt und gehofft hat, dass niemand sie findet. Aber manche Hoffnungen erfüllen sich nicht. Und jetzt stehen alte Freunde vor ihrer Tür und bitten sie, um ihre Hilfe. Sie muss sich entscheiden, ob sie ihren Zorn hinter sich lässt, um gemeinsam mit denen zu kämpfen, die sie im Stich gelassen und verraten haben. Denn das Böse ist endgültig nach Ardeal zurückgekehrt.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Button-Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // "Buch verschieben" Button
                      ElevatedButton(
                        onPressed: () {
                          // Aktion für "Buch verschieben" hier einfügen
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Buch verschieben"),
                        ),
                      ),

                      // "Buch löschen" Button
                      ElevatedButton(
                        onPressed: () {
                          // Aktion für "Buch löschen" hier einfügen
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Buch löschen"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
