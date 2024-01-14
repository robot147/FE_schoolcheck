import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/radio_button/radio_button.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// RadioListTile
enum chapter1 {
  chapter1_1(
      topLabel: '챕터1_1 탑 타이틀', title: '챕터1_1 타이틀', activeColor: Colors.red),
  chapter1_2(
    topLabel: '챕터1_2 탑 타이틀',
    title: '챕터1_2 타이틀',
  ),
  chapter1_3(
      topLabel: '챕터1_3 탑 타이틀',
      title: '챕터1_3 타이틀',
      subtitle: '챕터1_3 서브타이틀',
      activeColor: Colors.green),
  chapter1_4(
      title: '챕터1_4 타이틀',
      subtitle: '챕터1_4 서브타이틀',
      disabledValue: true,
      activeColor: Colors.black);

  final String? topLabel;
  final String? title;
  final String? subtitle;
  final bool? disabledValue;
  final Color? activeColor;
  const chapter1(
      {this.topLabel,
      this.title,
      this.subtitle,
      this.disabledValue = false,
      this.activeColor = const Color(0xff2196f3)});
}

enum r_chapter1 {
  r_chapter1_1(
      topLabel: '챕터1_1 탑 타이틀', title: '챕터1_1 타이틀', activeColor: Colors.red),
  r_chapter1_2(
    topLabel: '챕터1_2 탑 타이틀',
    title: '챕터1_2 타이틀',
  ),
  r_chapter1_3(
      topLabel: '챕터1_3 탑 타이틀', title: '챕터1_3 타이틀', activeColor: Colors.green),
  r_chapter1_4(
      topLabel: '챕터1_4 탑 타이틀', title: '챕터1_4 타이틀', activeColor: Colors.black);

  final String? topLabel;
  final String? title;
  final Color? activeColor;
  const r_chapter1(
      {this.topLabel, this.title, this.activeColor = const Color(0xff2196f3)});
}

// Radio
enum chapter2 {
  chapter2_1(
      topLabel: '챕터2_1 탑 타이틀', title: '챕터2_1 타이틀', activeColor: Colors.red),
  chapter2_2(title: '챕터2_2 타이틀'),
  chapter2_3(
      topLabel: '챕터2_3 탑 타이틀',
      title: '챕터2_3 타이틀',
      disabledValue: true,
      activeColor: Colors.green),
  chapter2_4(activeColor: Colors.black);

  final String? topLabel;
  final String? title;
  final bool? disabledValue;
  final Color? activeColor;
  const chapter2({
    this.topLabel,
    this.title,
    this.disabledValue = false,
    this.activeColor = const Color(0xff2196f3),
  });
}

enum r_chapter2 {
  r_chapter2_1(title: '챕터2_1 타이틀', activeColor: Colors.red),
  r_chapter2_2(title: '챕터2_2 타이틀'),
  r_chapter2_3(title: '챕터2_3 타이틀', activeColor: Colors.green),
  r_chapter2_4(title: '챕터2_4 타이틀', activeColor: Colors.black);

  final String? title;
  final Color? activeColor;
  const r_chapter2({
    this.title,
    this.activeColor = const Color(0xff2196f3),
  });
}

class RadioButton extends ConsumerStatefulWidget {
  const RadioButton({super.key});

  @override
  _RadioButton createState() => _RadioButton();
}

class _RadioButton extends ConsumerState<RadioButton> {
  chapter1 _chapter1_GroupValue = chapter1.chapter1_4;
  r_chapter1 _r_chapter1_GroupValue = r_chapter1.r_chapter1_1;
  chapter2 _chapter2_GroupValue = chapter2.chapter2_1;
  r_chapter2 _r_chapter2_GroupValue = r_chapter2.r_chapter2_1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              title: const SCText('라디오 버튼',
                  textStyle: SCTextStyle.font_14px_w700_h100),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SCText('RadioListTile',
                      textStyle: SCTextStyle.font_18px_w600_h100),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: chapter1.values
                        .map((chapter1Value) => SCRadioButton<chapter1>(
                              listTile: true,
                              title: chapter1Value.title,
                              subtitle: chapter1Value.subtitle,
                              topLabel: chapter1Value.topLabel,
                              activeColor: chapter1Value.activeColor,
                              value: chapter1Value,
                              groupValue: _chapter1_GroupValue,
                              onChanged: chapter1Value.disabledValue!
                                  ? null
                                  : (chapter1? value) {
                                      setState(() {
                                        _chapter1_GroupValue = value!;
                                      });
                                    },
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SCText(_chapter1_GroupValue.toString(),
                      textStyle: SCTextStyle.font_14px_w500_h100),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: r_chapter1.values
                        .map((rChapter1Value) => SCRadioButton<r_chapter1>(
                              listTile: true,
                              title: rChapter1Value.title,
                              topLabel: rChapter1Value.topLabel,
                              activeColor: rChapter1Value.activeColor,
                              value: rChapter1Value,
                              groupValue: _r_chapter1_GroupValue,
                              onChanged: (r_chapter1? value) {
                                setState(() {
                                  _r_chapter1_GroupValue = value!;
                                });
                              },
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SCText(_r_chapter1_GroupValue.toString(),
                      textStyle: SCTextStyle.font_14px_w500_h100),
                  const SizedBox(
                    height: 50,
                  ),
                  const SCText('Radio',
                      textStyle: SCTextStyle.font_18px_w600_h100),
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: chapter2.values
                          .map((chapter2Value) => SCRadioButton<chapter2>(
                                title: chapter2Value.title,
                                topLabel: chapter2Value.topLabel,
                                activeColor: chapter2Value.activeColor,
                                value: chapter2Value,
                                groupValue: _chapter2_GroupValue,
                                onChanged: (chapter2? value) {
                                  setState(() {
                                    _chapter2_GroupValue = value!;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SCText(_chapter2_GroupValue.toString(),
                      textStyle: SCTextStyle.font_14px_w500_h100),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: r_chapter2.values
                          .map((rChapter2Value) => SCRadioButton<r_chapter2>(
                                title: rChapter2Value.title,
                                activeColor: rChapter2Value.activeColor,
                                value: rChapter2Value,
                                groupValue: _r_chapter2_GroupValue,
                                onChanged: (r_chapter2? value) {
                                  setState(() {
                                    _r_chapter2_GroupValue = value!;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SCText(_r_chapter2_GroupValue.toString(),
                      textStyle: SCTextStyle.font_14px_w500_h100),
                ],
              ),
            )));
  }
}
