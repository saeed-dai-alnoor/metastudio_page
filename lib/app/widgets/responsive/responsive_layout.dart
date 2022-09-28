import 'package:flutter/material.dart';

class ResponsevLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  const ResponsevLayout({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 500) {
          return mobileView;
        } else if (constrains.maxWidth < 1100) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
