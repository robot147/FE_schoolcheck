import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

// ignore: must_be_immutable
class SCCheckbox extends StatelessWidget {
  SCCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    required this.tristate,
    this.toplabel,
    this.rightlabel,
    this.checkColor,
  });

  bool? isChecked;
  String? toplabel;
  String? rightlabel;
  Color? checkColor;
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
            if (toplabel != null)
              SCText(toplabel!,
                  textStyle: SCTextStyle.font_800_12px_100pc_P_black),
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
                activeColor: Colors.red,
                value: isChecked,
                onChanged: onChanged,
                checkColor: checkColor,
              ),
              if (rightlabel != null)
                const SizedBox(
                  width: 4,
                ),
              if (rightlabel != null)
                SCText(rightlabel!,
                    textStyle: SCTextStyle.font_600_12px_100pc_P_black)
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
      activeColor: Colors.red,
      value: isChecked,
      onChanged: onChanged,
      checkColor: checkColor,
    );
  }
}
