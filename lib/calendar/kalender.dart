import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/styles/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalenderScreen(),
    );
  }
}

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
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

// Kalender
class YourBodyWidget extends StatelessWidget {
  // Beispiel-Events für bestimmte Tage
  List<dynamic> _eventsForDay(DateTime day) {
    if (day.isAtSameMomentAs(DateTime.utc(2023, 1, 1))) {
      return ['Event 1', 'Event 2'];
    }

    if (day.isAtSameMomentAs(DateTime.utc(2023, 1, 2))) {
      return ['Event 3', 'Event 4'];
    }

    return [];
  }

  // Korrigierte Event-Funktion
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    print('Selected day: $selectedDay');
    // Hier kannst du weitere Aktionen für den ausgewählten Tag durchführen
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);

    return TableCalendar(
      firstDay: DateTime.utc(2023, 1, 1),
      lastDay: DateTime.utc(2023, 12, 31),
      focusedDay: today,
      eventLoader: _eventsForDay,
      calendarStyle: CalendarStyle(
        // Hier kannst du das Styling des Kalenders anpassen
        todayDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        // Weitere Styling-Optionen...
      ),
      onDaySelected: _onDaySelected,
      onFormatChanged: (format) {
        // Hier kannst du auf Formatänderungen reagieren
        print('Format changed to: $format');
      },
    );
  }
}
