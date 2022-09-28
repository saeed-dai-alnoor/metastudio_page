import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final double sizeBox;
  final double sizeText;
  const TitleText({
    super.key,
    required this.sizeBox,
    required this.sizeText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeBox,
      child: Text(
        'Diving into the metaverse has never been this easy\nwith the implementation of MetaStudios Analytics.',
        style: TextStyle(
          fontSize: sizeText,
          color: Colors.grey,
          height: 1.7,
        ),
      ),
    );
  }
}
