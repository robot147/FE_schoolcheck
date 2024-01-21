import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

class SCRadioButton<T> extends StatelessWidget {
  final bool? listTile;

  final String? title;

  final String? subtitle;

  final String? topLabel;

  final Color? activeColor;

  final T value;

  final T groupValue;

  final ValueChanged<T?>? onChanged;

  const SCRadioButton(
      {super.key,
      this.listTile = false,
      this.title,
      this.subtitle,
      this.topLabel,
      this.activeColor,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  // 1. RadioListTile
  // 2. RadioListTile & topLabel & title & subtitle
  // 3. RadioListTile & topLabel & title
  // 4. RadioListTile & topLabel
  // 5. RadioListTile & title & subtitle
  // 6. RadioListTile & title
  // 7. Radio & topLabel & title
  // 8. Radio & topLabel
  // 9. Radio
  @override
  Widget build(BuildContext context) {
    // RadioListTile 위젯 사용 유무
    if (listTile!) {
      // RadioListTile topLabel 위젯 사용 유무
      if (topLabel != null) {
        if (title != null && subtitle != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
              const SizedBox(
                height: 4,
              ),
              RadioListTile<T>(
                  title: SCText(title!,
                      textStyle: SCTextStyle.font_14px_w500_h100),
                  subtitle: Text(subtitle!),
                  activeColor: activeColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
            ],
          );
        } else if (title != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
              const SizedBox(
                height: 4,
              ),
              RadioListTile<T>(
                  title: SCText(title!,
                      textStyle: SCTextStyle.font_14px_w500_h100),
                  activeColor: activeColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
              const SizedBox(
                height: 4,
              ),
              RadioListTile<T>(
                  activeColor: activeColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
            ],
          );
        }
      } else if (title != null && subtitle != null) {
        return RadioListTile<T>(
            title: SCText(title!, textStyle: SCTextStyle.font_14px_w500_h100),
            subtitle: Text(subtitle!),
            activeColor: activeColor,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged);
      } else if (title != null) {
        return RadioListTile<T>(
            title: SCText(title!, textStyle: SCTextStyle.font_14px_w500_h100),
            activeColor: activeColor,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged);
      } else {
        return RadioListTile<T>(
            value: value, groupValue: groupValue, onChanged: onChanged);
      }
    }
    // Radio 위젯 사용 유무
    else {
      // Radio topLabel 위젯 사용 유무
      if (topLabel != null) {
        // Radio topLabel & title 위젯 사용 유무
        if (title != null) {
          return Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio<T>(
                          activeColor: activeColor,
                          value: value,
                          groupValue: groupValue,
                          onChanged: onChanged),
                      Expanded(
                        child: SCText(title!,
                            textStyle: SCTextStyle.font_14px_w500_h100),
                      )
                    ],
                  )
                ],
              ));
        } else {
          return Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
                  const SizedBox(
                    height: 4,
                  ),
                  Radio<T>(
                      activeColor: activeColor,
                      value: value,
                      groupValue: groupValue,
                      onChanged: onChanged),
                ],
              ));
        }
      } else {
        // Radio title 위젯 사용 유무
        if (title != null) {
          return Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio<T>(
                      activeColor: activeColor,
                      value: value,
                      groupValue: groupValue,
                      onChanged: onChanged),
                  Expanded(
                    child: SCText(title!,
                        textStyle: SCTextStyle.font_14px_w500_h100),
                  ),
                ],
              ));
        }
        // Radio 위젯 사용 유무
        else {
          return Expanded(
            flex: 1,
            child: Radio<T>(
                activeColor: activeColor,
                value: value,
                groupValue: groupValue,
                onChanged: onChanged),
          );
        }
      }
    }
  }
}
