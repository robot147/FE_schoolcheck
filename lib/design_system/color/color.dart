// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

//테마 확장성
enum ColorTheme {
  light,
}

class SCColors {
  static ColorTheme theme = ColorTheme.light;

  static Color _fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color get color_brand {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  static Color get color_secondary {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  static Color get color_grey_00 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FFFFFF');
    }
  }

  static Color get color_grey_05 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#E6E6E6');
    }
  }

  static Color get color_grey_20 {
    switch (theme) {
      case ColorTheme.light:
        return const Color.fromRGBO(0, 0, 0, 0.2);
    }
  }

  static Color get color_grey_50 {
    switch (theme) {
      case ColorTheme.light:
        return const Color.fromRGBO(0, 0, 0, 0.5);
    }
  }

  static Color get color_grey_99 {
    switch (theme) {
      case ColorTheme.light:
        return const Color.fromRGBO(0, 0, 0, 1);
    }
  }

  static Color get color_negative {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#DE0909');
    }
  }

  static Color get color_positive {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#2B7FFF');
    }
  }

  static Color get color_focused {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#2B7FFF');
    }
  }

  ///ex)) gradient_color
  static LinearGradient get button_gradient {
    switch (theme) {
      case ColorTheme.light:
        return const LinearGradient(
          stops: [0.0, 1.0],
          end: Alignment(-0.2, -0.2),
          begin: Alignment(1.2, 1.2),
          transform: GradientRotation(3),
          colors: [
            Color.fromRGBO(255, 255, 255, 0.3),
            Color.fromRGBO(204, 96, 255, 0.7)
          ],
        );
    }
  }
}
