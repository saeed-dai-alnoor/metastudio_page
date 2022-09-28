import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final double fontSize;
  const DrawerWidget({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff1B1E1F),
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset(
              'assets/images/logo.png',
              width: 40.0,
              height: 40,
            ),
          ),
          buildDrawerItem(icon: Icons.home, title: 'Home', onPressed: () {}),
          buildDrawerItem(
              icon: Icons.room_service, title: 'Services', onPressed: () {}),
          buildDrawerItem(
              icon: Icons.price_change, title: 'Pricing', onPressed: () {}),
          buildDrawerItem(
              icon: Icons.app_blocking, title: 'Blog', onPressed: () {})
        ],
      ),
    );
  }

  Widget buildDrawerItem(
      {required String title,
      required VoidCallback onPressed,
      required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
        ),
      ),
      onTap: onPressed,
    );
  }
}
