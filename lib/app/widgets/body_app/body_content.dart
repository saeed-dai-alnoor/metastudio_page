import 'package:flutter/material.dart';
import 'package:metastudio_page/app/widgets/responsive/width_height.dart';

class BodyContent extends StatelessWidget {
  final double widthMargin;
  final double heightMargin;
  final List<Widget> children;
  const BodyContent({
    super.key,
    required this.widthMargin,
    required this.heightMargin,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: getWith(context) - widthMargin,
        height: getHieght(context) - heightMargin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(22, 16, 55, 0.21176470588235294),
              Color.fromRGBO(99, 95, 121, 0.3607843137254902),
              Color.fromRGBO(112, 112, 112, 0.3686274509803922),
            ],
          ),
          // color: Colors.deepOrange
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
