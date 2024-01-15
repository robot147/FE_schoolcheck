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

  // 브랜드 컬러
  static Color get brand_color {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  // 입력 창 border 색
  static Color get input_border_color {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  // 브랜드컬러, 빨간색
  static Color get $color_brand {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  // 브랜드컬러, 빨간색(추후 변경 가능)
  static Color get $color_secondary {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FF0000');
    }
  }

  // 진한 배경색 위의 글자색
  static Color get $color_grey_00 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#FFFFFF');
    }
  }

  // 태블릿 기본 배경색
  static Color get $color_grey_05 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#E6E6E6');
    }
  }

  // 버튼 비활성화 배경색 / border 기본색
  static Color get $color_grey_20 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#0000000');
    }
  }

  // 폰트 기본색 / 체크박스 비활성화색 / 라디오 비활성화색
  static Color get $color_grey_50 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#0000000');
    }
  }

  // 폰트 기본색
  static Color get $color_grey_99 {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#0000000');
    }
  }

  // 토스트 : 경고 배경색
  static Color get $color_negative {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#DE0909');
    }
  }

  // 토스트 : 성공, 알림 배경색
  static Color get $color_positive {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#2B7FFF');
    }
  }

  // 토스트 : 성공, 알림 배경색 - 왜 두개?
  static Color get $color_focused {
    switch (theme) {
      case ColorTheme.light:
        return _fromHex('#2B7FFF');
    }
  }
}
