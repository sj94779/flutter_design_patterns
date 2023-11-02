import 'package:flutter/material.dart';
import '../Factory Method/platform_button.dart';
import '../Factory Method/platform_indicator.dart';

class AbstractFactoryImpl {
  //for multiple widgets

  static Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
