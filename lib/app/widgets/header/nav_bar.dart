import 'package:flutter/material.dart';
import 'package:metastudio_page/app/widgets/header/nav_bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.only(
        right: 20.0,
        left: 80.0,
        top: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/images/logo.png'),
          NavBarItem(title: 'Home', onPressed: () {}),
          NavBarItem(title: 'Services', onPressed: () {}),
          NavBarItem(title: 'Pricing', onPressed: () {}),
          NavBarItem(title: 'Blog', onPressed: () {}),
          Container(
            height: 50.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(242, 146, 240, 0.7019607843137254),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/images/point.png'),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Text(
                    'Metaman',
                    style: TextStyle(color: Color(0xff1a1822), fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
