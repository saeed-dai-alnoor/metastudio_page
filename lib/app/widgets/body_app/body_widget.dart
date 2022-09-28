import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
final List<Widget> children;
  const BodyWidget({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: children,
    );
  }
}
