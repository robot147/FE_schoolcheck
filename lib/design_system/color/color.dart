// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

//테마 확장성
enum ColorTheme {
  light,
}

class Colors {
  static ColorTheme theme = ColorTheme.light;

  static Color _fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  //1. hex
  static Color get background {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#EFF2F5');
    }
  }

  ///2. RGBO
  static Color get text_primary {
    switch (theme) {
      case ColorTheme.light:
        return const Color.fromRGBO(34, 29, 48, 0.6);
    }
  }

  ///3. gradient_color
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
