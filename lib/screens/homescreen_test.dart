import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vocab_app/screens/home_screen.dart';
import 'package:vocab_app/screens/quiz_screen.dart';
import 'package:vocab_app/screens/search_screen.dart';
import 'package:vocab_app/screens/setting_screen.dart';

class HomeScreenTest extends StatefulWidget {
  const HomeScreenTest({super.key});

  @override
  State<HomeScreenTest> createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
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
        controller: FloatingBottomBarController(initialIndex: 1),
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
                Icons.home,
                color: AppColors.white,
              ),
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (_) {
                  return Center(
                    child: Text('Test'),
                  );
                },
              ),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.access_alarm,
                color: AppColors.white,
              ),
              onTap: () => print('Item2'),
            ),
            FloatingCenterButtonChild(
              child: const Icon(
                Icons.ac_unit_outlined,
                color: AppColors.white,
              ),
              onTap: () => print('Item3'),
            ),
          ],
        ),
      ),
    );
  }
}
