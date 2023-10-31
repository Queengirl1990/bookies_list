import 'package:flutter/material.dart';

const Color darkRed = Color(0xFFAC5859);

void main() {
  runApp(const Mapz());
}

class Mapz extends StatelessWidget {
  const Mapz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationWrapper(),
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
      ),
    );
  }
}

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({Key? key}) : super(key: key);

  @override
  State<NavigationWrapper> createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: darkRed, // Hier änderst du die Farbe auf darkRed
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book), // Ändere das Icon für SuB
            label: 'SuB',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings), // Ändere das Icon für Settings
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.help_outline), // Ändere das Icon für Profile
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: <Widget>[
          const StartPage(),
          const MapPage(),
          const StatsPagewithlist(),
          const ProfilePage(),
        ][currentPageIndex],
      ),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(),
          ),
          Text(
            'Start Page',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Coming Soon!',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(),
          ),
          Text(
            'Map Page',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Coming Soon!',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}

class StatsPagewithlist extends StatefulWidget {
  const StatsPagewithlist({Key? key}) : super(key: key);

  @override
  _StatsPagewithlistState createState() => _StatsPagewithlistState();
}

class _StatsPagewithlistState extends State<StatsPagewithlist> {
  final List<String> items = List.generate(50, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(),
          ),
          Text(
            'Profile Page',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Coming Soon!',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
