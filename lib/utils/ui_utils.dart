import 'package:flutter/material.dart';

class UiUtils {
  BuildContext? buildContext;

  UiUtils(BuildContext this.buildContext);

  double getWidth() {
    return MediaQuery.sizeOf(buildContext!).width;
  }

  double getHeight() {
    return MediaQuery.sizeOf(buildContext!).height;
  }
}
