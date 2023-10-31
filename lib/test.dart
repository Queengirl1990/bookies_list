import 'package:flutter/material.dart';

void main() {
  runApp(const Mapz());
}

class Mapz extends StatelessWidget {
  const Mapz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationWrapper(),
      theme: ThemeData.dark(),
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
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_activity),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: <Widget>[
          const StyledPage(),
          const MapPage(),
          const StatsPagewithlist(),
          const ProfilePage(),
        ][currentPageIndex],
      ),
    );
  }
}

class NavigationBar extends StatefulWidget {
  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final Color indicatorColor;
  final ValueChanged<int> onDestinationSelected;

  const NavigationBar({
    required this.destinations,
    required this.selectedIndex,
    required this.indicatorColor,
    required this.onDestinationSelected,
  });

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    // Implement the navigation bar widget here
    // You may use widget.destinations and widget.selectedIndex
    // to build the navigation bar items.
    return BottomNavigationBar(
      items: widget.destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: destination.icon,
          label: destination.label,
        );
      }).toList(),
      currentIndex: widget.selectedIndex,
      selectedItemColor: widget.indicatorColor,
      onTap: widget.onDestinationSelected,
    );
  }
}

class NavigationDestination {
  final Icon icon;
  final String label;

  const NavigationDestination({
    required this.icon,
    required this.label,
  });
}

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
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
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
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

class StyledPage extends StatelessWidget {
  const StyledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Home",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "Statistics",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Status Boxen
            Row(
              children: [
                _statusBox("123", "Commits", Icons.stacked_bar_chart),
                const SizedBox(width: 10),
                _statusBox("456", "Lines Code", Icons.code),
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 150,
              child: Placeholder(),
            ),
            const SizedBox(height: 40),
            const Text(
              "New Activities",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 400,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}

Widget _statusBox(String number, String explanation, IconData iconData) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 39, 39, 46),
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 40.0,
            color: Colors.orange,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              Text(explanation),
            ],
          )
        ],
      ),
    ),
  );
}
