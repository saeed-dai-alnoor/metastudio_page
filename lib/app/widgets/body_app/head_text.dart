import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final double size;
  const HeadText({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(fontSize: size),
        children: const [
          TextSpan(
            text: 'Find your ',
            style: TextStyle(color: Colors.white),
          ),
          TextSpan(
            text: 'Gate\n',
            style: TextStyle(color: Color(0xfff292f0)),
          ),
          TextSpan(text: 'into the ', style: TextStyle(color: Colors.white)),
          TextSpan(
            text: 'Metaverse',
            style: TextStyle(color: Color(0xfff292f0)),
          ),
        ],
      ),
    );
  }
}
