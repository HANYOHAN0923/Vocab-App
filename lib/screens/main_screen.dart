import 'package:flutter/material.dart';
import 'package:vocab_app/screens/login_screen.dart';
import 'package:vocab_app/screens/tab_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isLogIn = true;

  @override
  Widget build(BuildContext context) {
    return isLogIn ? const TabScreen() : const LoginScreen();
  }
}
