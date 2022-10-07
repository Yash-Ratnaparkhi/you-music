import 'package:flutter/material.dart';

class ScreenRatio {
   double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

   double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
