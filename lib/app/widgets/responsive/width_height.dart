import 'package:flutter/material.dart';

double getWith(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHieght(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
