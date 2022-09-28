import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final double height;
  final double width;
  final double sizeTitle;
 final VoidCallback? onPressed;
  const ButtonApp({
    super.key,
    required this.height,
    required this.sizeTitle,
    required this.width,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 146, 240, 0.7019607843137254),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            'Get in Touch',
            style: TextStyle(fontSize: sizeTitle),
          ),
        ),
      ),
    );
  }
}
