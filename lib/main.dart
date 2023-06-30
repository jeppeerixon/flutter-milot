import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/contact.dart';
import 'package:flutter_app_1/pages/home.dart';
import 'package:flutter_app_1/pages/map.dart';
import 'package:flutter_app_1/pages/orgs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    MapScreen(),
    OrgScreen(),
    ContactScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Hem',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Karta',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'Föreningar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              label: 'Kontakt',
            ),
          ],
          onTap: _navigateBottomBar,
          selectedItemColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}



