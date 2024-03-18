import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double heightPercent(double value) => height * value / 100;
  double widthPercent(double value) => width * value / 100;
}

extension AppSpace on BuildContext {
  /* ===== HORIZONTAL SPACING ========= */
  SizedBox get hori1 => SizedBox(width: widthPercent(1));
  SizedBox get hori2 => SizedBox(width: widthPercent(2));
  SizedBox get hori3 => SizedBox(width: widthPercent(3));
  SizedBox get hori4 => SizedBox(width: widthPercent(4));
  SizedBox get hori5 => SizedBox(width: widthPercent(5));
  SizedBox get hori6 => SizedBox(width: widthPercent(6));
  SizedBox get hori7 => SizedBox(width: widthPercent(7));
  SizedBox get hori8 => SizedBox(width: widthPercent(8));
  SizedBox get hori9 => SizedBox(width: widthPercent(9));
  SizedBox get hori10 => SizedBox(width: widthPercent(10));
  SizedBox horiSpace(double value) => SizedBox(width: widthPercent(value));

  /* ===== VERTICAL SPACING ========= */
  SizedBox get vert1 => SizedBox(height: heightPercent(1));
  SizedBox get vert2 => SizedBox(height: heightPercent(2));
  SizedBox get vert3 => SizedBox(height: heightPercent(3));
  SizedBox get vert4 => SizedBox(height: heightPercent(4));
  SizedBox get vert5 => SizedBox(height: heightPercent(5));
  SizedBox get vert6 => SizedBox(height: heightPercent(6));
  SizedBox get vert7 => SizedBox(height: heightPercent(7));
  SizedBox get vert8 => SizedBox(height: heightPercent(8));
  SizedBox get vert9 => SizedBox(height: heightPercent(9));
  SizedBox get vert10 => SizedBox(height: heightPercent(10));
  SizedBox vertSpace(double value) => SizedBox(height: heightPercent(value));
  double get defaultPadding => width * 0.025;
}

extension TextSize on BuildContext {
  double get t0 => width / 10;
  double get t1 => width / 16;
  double get t2 => width / 19;
  double get t3 => width / 21;
  double get t4 => width / 24;
  double get p1 => width / 25;
  double get p2 => width / 29;
  double get p3 => width / 32;
  double get p4 => width / 36;
  double get p5 => width / 39;
  double get p6 => width / 43;
}
