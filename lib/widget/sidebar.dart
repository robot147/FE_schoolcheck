import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SCSidebar extends ConsumerWidget {
  List<String> topMenuList = ['홈', '관찰', '체크', '통계'];
  List<String> bottomMenuList = ['목록', '관리', '내정보', '설정'];
  int selectedIndex = 1;
  bool isLocked = false;
  SCSidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 0.0),
        GestureDetector(
          child: Container(
            width: double.infinity,
            color: selectedIndex == 0 ? Colors.red : SCColors.$color_grey_05,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              child: Center(
                child: SCText(
                  '홈',
                  textStyle: SCTextStyle.$font_20px_w700_h100,
                ),
              ),
            ),
          ),
          onTap: () {
            selectedIndex = 0;
          },
        ),
        const SizedBox(height: 40.0),
        Flexible(
          child: ListView.builder(
            itemCount: topMenuList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                        child: SCText(
                          topMenuList[index],
                          textStyle: SCTextStyle.$font_20px_w700_h100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                ],
              );
            },
          ),
        ),
        const Spacer(),
        for (String menuItem in bottomMenuList)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                child: SCText(
                  menuItem,
                  textStyle: SCTextStyle.$font_20px_w700_h100,
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          ),

        // 잠금 버튼. 추후 이미지로 변경될 예정
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: SCText(
            '잠금',
            textStyle: SCTextStyle.$font_20px_w700_h100,
          ),
        ),
      ],
    );
  }
}
