import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelpers {
  UIHelpers._();

  static double getAppBarWidgetHeight() {
    return _orientationBased(0.15, 0.15, screen: true);
  }

  static double getPokeImgWidth() {
    return _orientationBased(0.2, 0.2, screen: true);
  }

  static EdgeInsets getDefaultPadding() {
    return EdgeInsets.all(_orientationBased(12, 8));
  }

  static double _orientationBased(double height, double width,
      {screen = false}) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      if (screen) {
        return height.sh;
      } else {
        return height.h;
      }
    } else {
      if (screen) {
        return width.sw;
      } else {
        return width.w;
      }
    }
  }
}
