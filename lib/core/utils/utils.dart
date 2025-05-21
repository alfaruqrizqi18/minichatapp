// screen size
import 'package:flutter/material.dart';

import '../services/navigation_service.dart';

const double generalPaddingHorizontal = 25;

Widget vSpace(double val) {
  return SizedBox(height: val);
}

Widget hSpace(double val) {
  return SizedBox(width: val);
}

double screenWidth() => MediaQuery.of(globalCurrentContext).size.width;
double screenHeight() => MediaQuery.of(globalCurrentContext).size.height;
Size screenSize() => MediaQuery.of(globalCurrentContext).size;
