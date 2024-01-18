import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

// ignore: must_be_immutable
class SCCheckbox extends StatelessWidget {
  SCCheckbox(
      {super.key,
      required this.isChecked,
      required this.onChanged,
      required this.tristate,
      this.toplabel,
      this.rightlabel,
      this.checkColor,
      this.fillColor,
      this.activeColor = Colors.red,
      this.toplabelStyle = SCTextStyle.font_14px_w700_h100,
      this.rightlableStyle = SCTextStyle.font_12px_w600_h100});

  bool? isChecked;
  String? toplabel;
  String? rightlabel;
  Color? checkColor;
  Color? fillColor;
  Color? activeColor;
  SCTextStyle toplabelStyle;
  SCTextStyle? rightlableStyle;

  // 체크박스 상태에 - 존재여부
  // true -> - 존재 (value에 null 이 존재함)
  // false -> - 존재 (value에 null 존재하지 않음)
  bool tristate;

  void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    if (toplabel != null || rightlabel != null) {
      return SizedBox(
        height: 48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (toplabel != null) SCText(toplabel!, textStyle: toplabelStyle),
            const SizedBox(
              height: 4,
            ),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Checkbox(
                tristate: tristate,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                activeColor: activeColor,
                value: isChecked,
                onChanged: onChanged,
                checkColor: checkColor,
                fillColor: MaterialStatePropertyAll(fillColor),
              ),
              if (rightlabel != null)
                const SizedBox(
                  width: 4,
                ),
              if (rightlabel != null)
                SCText(
                  rightlabel!,
                  textStyle: SCTextStyle.font_12px_w600_h100,
                )
            ])
          ],
        ),
      );
    }

    return Checkbox(
      tristate: tristate,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      activeColor: activeColor,
      value: isChecked,
      onChanged: onChanged,
      checkColor: checkColor,
      fillColor: MaterialStatePropertyAll(fillColor),
    );
  }
}
