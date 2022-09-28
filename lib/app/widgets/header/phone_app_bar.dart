import 'package:flutter/material.dart';

class PhoneAppBar extends StatelessWidget {
  final String titleAppBar;
  const PhoneAppBar({
    super.key,
    required this.titleAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(titleAppBar),
        centerTitle: true,
      ),
    );
  }
}
