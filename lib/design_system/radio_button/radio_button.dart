import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

class SCRadioButton<T> extends StatelessWidget {
  final bool? listTile;

  final Widget? title;

  final Widget? subtitle;

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
  // 2. RadioListTile & topLabel
  // 3. Radio & topLabel & title
  // 4. Radio & topLabel
  // 5. Radio
  @override
  Widget build(BuildContext context) {
    // RadioListTile 위젯 사용 유무
    if (listTile!) {
      // RadioListTile topLabel 위젯 사용 유무
      if (topLabel != null) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SCText(topLabel!, textStyle: SCTextStyle.font_14px_w400_h100),
            const SizedBox(
              height: 4,
            ),
            RadioListTile<T>(
                title: title,
                subtitle: subtitle,
                activeColor: activeColor,
                value: value,
                groupValue: groupValue,
                onChanged: onChanged),
          ],
        );
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
                      Expanded(child: title!)
                    ],
                  )
                ],
              ));
        } else {
          return Column(
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
          );
        }
      } else {
        // Radio title 위젯 사용 유무
        if (title != null) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio<T>(
                  activeColor: activeColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
              Expanded(child: title!),
            ],
          );
        }
        // Radio 위젯 사용 유무
        else {
          return Row(
            children: [
              Radio<T>(
                  activeColor: activeColor,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged),
            ],
          );
        }
      }
    }
  }
}
