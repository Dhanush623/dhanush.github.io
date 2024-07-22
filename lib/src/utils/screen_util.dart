import 'package:flutter/widgets.dart';

class ScreenUtil {
  static late double _screenWidth;

  static double get screenWidth => _screenWidth;

  static void init(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
  }

  static int crossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    int crossAxisCount = (screenWidth / 200).floor();
    return crossAxisCount > 0 ? crossAxisCount : 1;
  }
}
