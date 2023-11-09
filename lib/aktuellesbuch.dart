import 'package:flutter/material.dart';
import 'styles.dart';
import 'bookiesList-widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrentlyReadingScreen(),
    );
  }
}

class CurrentlyReadingScreen extends StatefulWidget {
  const CurrentlyReadingScreen({Key? key}) : super(key: key);

  @override
  _CurrentlyReadingScreenState createState() => _CurrentlyReadingScreenState();
}

class _CurrentlyReadingScreenState extends State<CurrentlyReadingScreen> {
  int currentPageIndex = 0;

  Widget myCircularAvatar() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/avatar.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double bookProgress = 0.85; // Fortschritt auf 85%

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkRed,
        elevation: 0,
        actions: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          myCircularAvatar(),
        ],
      ),
      backgroundColor: darkRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20), // Abstand zur Appbar
          const Text(
            "Aktueller Lesestoff",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20), // Abstand zum Container
          Container(
            width: 320,
            color: darkRed,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Life after you",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: snowWhite,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Mandy J. Hard",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: snowWhite,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Kategorie",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: snowWhite,
                      ),
                    ),
                    Text(
                      "New Adult",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: snowWhite,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ClipRRect(
                    child: LinearPercentIndicator(
                    width: 200,
                    lineHeight: 14.0,
                    percent: bookProgress,
                    center: Text('${(bookProgress * 100).toStringAsFixed(0)}%'),
                    progressColor: snowWhite, 
                    linearStrokeCap: LinearStrokeCap.roundAll, 
                    ),
                    )
                  ],
                ),
                const SizedBox(width: 50),
                SizedBox(
                  width: 70,
                  height: 140,
                  child: Image.asset('assets/images/life_after.jpg'),
                ),
              ],
            ),
          ),
          MyDividerWithIcons(),
        ],
      ),
    );
  }
}
