import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../styles/farbcodes.dart';
import 'package:bookieslist/styles/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;

  Map<DateTime, List<dynamic>> _events = {
    DateTime.utc(2023, 12, 31): ['Event 1', 'Event 2'],
    DateTime.utc(2023, 1, 2): ['Event 3', 'Event 4'],
  };

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);

    return Scaffold(
      appBar: customAppBar(context),
      body: YourBodyWidget(
        events: _events,
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
          // React to the selected day
          print('Selected day: $_selectedDay');
        },
        onFormatChanged: (format) {
          // React to format changes
          print('Format changed to: $format');
        },
        addEvent: (day, event) {
          _addEvent(day, event);
        },
      ),
      backgroundColor: darkRed,
    );
  }

  void _addEvent(DateTime day, String event) {
    setState(() {
      if (_events[day] != null) {
        _events[day]!.add(event);
      } else {
        _events[day] = [event];
      }
    });
  }
}

class YourBodyWidget extends StatefulWidget {
  final Map<DateTime, List<dynamic>> events;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(CalendarFormat) onFormatChanged;
  final Function(DateTime, String) addEvent;

  YourBodyWidget({
    required this.events,
    required this.onDaySelected,
    required this.onFormatChanged,
    required this.addEvent,
  });

  @override
  _YourBodyWidgetState createState() => _YourBodyWidgetState();
}

class _YourBodyWidgetState extends State<YourBodyWidget> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);

    return TableCalendar(
      firstDay: DateTime.utc(2023, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: today,
      eventLoader: (day) => widget.events[day] ?? [],
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: cremeColor,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: cremeColor,
          shape: BoxShape.circle,
        ),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        widget.onDaySelected(selectedDay, focusedDay);
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        print('Selected day: $_selectedDay');
      },
      onFormatChanged: (format) {
        widget.onFormatChanged(format);
        print('Format changed to: $format');
      },
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(fontSize: 20),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(fontSize: 16),
        weekendStyle: TextStyle(fontSize: 16),
      ),
      calendarBuilders: CalendarBuilders(
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];

          if (events.isNotEmpty) {
            children.add(Positioned(
              right: 1,
              bottom: 1,
              child: _buildEventsMarker(events),
            ));
          }

          return children;
        },
      ),
      onDayLongPressed: (selectedDay, focusedDay) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Add New Event'),
            content: TextField(
              onChanged: (event) {
                // React to changes in the text field
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  widget.addEvent(selectedDay, 'New Event');
                  Navigator.of(context).pop();
                },
                child: Text('Add'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEventsMarker(List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(8.0),
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
