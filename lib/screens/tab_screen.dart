import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vocab_app/screens/home_screen.dart';
import 'package:vocab_app/screens/quiz_screen.dart';
import 'package:vocab_app/screens/search_screen.dart';
import 'package:vocab_app/screens/setting_screen.dart';
import 'package:vocab_app/widgets/tab_bottom_sheet.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int index = 0;

  List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    QuizSreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        barColor: Colors.white,
        controller: FloatingBottomBarController(initialIndex: 0),
        bottomBar: [
          BottomBarItem(
            icon: const Icon(Icons.home, size: 10.0),
            iconSelected: const Icon(Icons.home, color: Colors.red, size: 10.0),
            title: "Home",
            dotColor: Colors.blue,
            onTap: (value) {
              setState(() {
                index = value;
              });
              print('Home $value');
            },
          ),
          BottomBarItem(
            icon: const Icon(Icons.photo, size: 10.0),
            iconSelected:
                const Icon(Icons.photo, color: Colors.orange, size: 10.0),
            title: 'Photo',
            dotColor: Colors.yellow,
            onTap: (value) {
              setState(() {
                index = value;
              });
              print('Search $value');
            },
          ),
          BottomBarItem(
            icon: const Icon(Icons.person, size: 10.0),
            iconSelected:
                const Icon(Icons.person, color: Colors.green, size: 10.0),
            title: 'Person',
            dotColor: Colors.lightGreen,
            onTap: (value) {
              setState(() {
                index = value;
              });
              print('Profile $value');
            },
          ),
          BottomBarItem(
            icon: const Icon(Icons.settings, size: 10.0),
            iconSelected:
                const Icon(Icons.settings, color: Colors.purple, size: 10.0),
            title: 'Settings',
            dotColor: Colors.pink,
            onTap: (value) {
              setState(() {
                index = value;
              });
              print('Settings $value');
            },
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: Colors.indigo,
          centerIcon: const FloatingCenterButton(
            child: Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
          centerIconChild: [
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.add,
                color: AppColors.white,
              ),
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (_) {
                  return AddVocabulary();
                },
              ),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.category_sharp,
                color: AppColors.white,
              ),
              onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return AddCategory();
                  }),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.cancel,
                color: AppColors.white,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
