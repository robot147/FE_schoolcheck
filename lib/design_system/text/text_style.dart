// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

enum SCTextStyle {
  // Heading[600]

  ///font_40px_w500_h100
  font_40px_w500_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 40,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_32px_w500_h100
  font_32px_w500_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 32,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_24px_w700_h100
  font_24px_w700_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 1.0,
    color: Color(0xff000000),
  )),

  /// font_20px_w700_h100
  font_20px_w700_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_18px_w600_h100
  font_18px_w600_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_16px_w600_h100
  font_16px_w600_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_16px_w500_h100
  font_16px_w500_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_16px_w400_h100
  font_16px_w400_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_14px_w700_h100
  font_14px_w700_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_14px_w500_h100
  font_14px_w500_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_14px_w400_h120
  font_14px_w400_h120(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.2,
    color: Color(0xff000000),
  )),

  ///font_14px_w400_h100
  font_14px_w400_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.0,
    color: Color(0xff000000),
  )),

  ///font_12px_w600_h100
  font_12px_w600_h100(TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1.0,
    color: Color(0xff000000),
  )),
  ;

  const SCTextStyle(this._style);
  final TextStyle _style;

  TextStyle get value => _style;
}
