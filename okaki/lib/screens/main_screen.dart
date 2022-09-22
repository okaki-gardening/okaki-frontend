import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okaki/pages/dashboard_page.dart';
import 'package:okaki/pages/regeln_page.dart';
import 'package:okaki/pages/sensoren_page.dart';
import 'package:okaki/pages/ventile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _pageTitle = "Dashboard";

  final List<Widget> _pages = const [
    DashBoardPage(),
    SensorenPage(),
    VentilePage(),
    RegelnPage(),
  ];

  final List<String> _titles = ["Dashboard", "Sensoren", "Ventile", "Regeln"];

  void _navigateBottomBar(int i) {
    setState(() {
      _selectedIndex = i;
      _pageTitle = _titles[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text("MENÜ"),
              ),
              ListTile(
                title: Text("Profil"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Einstellungen"),
                leading: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).colorScheme.onBackground,
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/images/sensor.svg',
                height: 24,
                width: 24,
                color: _selectedIndex == 1
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onBackground,
              ),
              label: "Sensoren"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/images/ventil_simple.svg',
                height: 24,
                width: 24,
                color: _selectedIndex == 2
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onBackground,
              ),
              label: "Ventile"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.rule), label: "Regeln"),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
