import 'package:flutter/material.dart';

class ScreenHelper {
  static const double phoneBreakpoint = 600;
  static const double tabletBreakpoint = 1200;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width < phoneBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= phoneBreakpoint &&
          MediaQuery.of(context).size.width < tabletBreakpoint;

  static double gridItemWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < phoneBreakpoint) return width / 2;
    return width / (width < 900 ? 3 : 4);
  }

  static EdgeInsets screenPadding(BuildContext context) {
    if (isPhone(context)) {
      return const EdgeInsets.all(8.0);
    }
    return const EdgeInsets.all(16.0);
  }
}