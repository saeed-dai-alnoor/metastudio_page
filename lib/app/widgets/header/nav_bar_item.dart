import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const NavBarItem({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(fontSize: 25.0, color: Colors.white),
      ),
    );
  }
}
