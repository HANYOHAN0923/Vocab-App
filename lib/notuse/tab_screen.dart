import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:vocab_app/screens/bookmark_screen.dart';
import 'package:vocab_app/screens/home_screen.dart';
import 'package:vocab_app/screens/quiz_screen.dart';
import 'package:vocab_app/screens/search_screen.dart';
import 'package:vocab_app/screens/profile_screen.dart';

class TabScreenNotUse extends StatefulWidget {
  const TabScreenNotUse({super.key});

  @override
  State<TabScreenNotUse> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreenNotUse> {
  int _selectedIndex = 0;

  List<Widget> tabScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const QuizSreen(),
    const BookmarkScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabScreen[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        animationDuration: const Duration(milliseconds: 500),
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        showElevation: true,
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search_outlined),
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.quiz_outlined),
            title: const Text('Quiz'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.bookmark_border_outlined),
            title: const Text('Bookmark'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
