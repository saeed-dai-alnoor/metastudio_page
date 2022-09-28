import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final double firstIconSize;
  final double sizeTitle;
  final double secondIconSize;
  final double heightBox;
  final double spaceBetween;
  const Footer({
    super.key,
    required this.firstIconSize,
    required this.sizeTitle,
    required this.secondIconSize,
    required this.heightBox,
    required this.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'assets/images/left.png',
                width: firstIconSize,
                height: firstIconSize,
              ),
              SizedBox(height: heightBox),
              Text(
                'Explore SA-T21',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizeTitle,
                ),
              ),
            ],
          ),
          SizedBox(width: spaceBetween),
          Column(
            children: <Widget>[
              Image.asset(
                'assets/images/right.png',
                width: secondIconSize,
                height: secondIconSize,
              ),
              SizedBox(height: heightBox),
              Text(
                'Explore AT01',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sizeTitle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
