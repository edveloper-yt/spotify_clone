import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/search.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int index = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: index, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFB3B3B3),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/search.png"),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/library.png"),
            ),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
