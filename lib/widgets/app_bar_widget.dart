import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const MainAppBar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      actions: const [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
