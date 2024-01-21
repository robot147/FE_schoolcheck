import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/view/home/home_page_layout_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 메인 컨텐츠 사이드바
class SCSidebar extends ConsumerWidget {
  // 상단 메뉴 리스트 -> 추후 프로바이더에 통합 예정
  List<String> topMenuList = ['관찰', '체크', '통계'];
  // 하단 메뉴 리스트 -> 추후 프로바이더에 통합 예정
  List<String> bottomMenuList = ['목록', '관리', '내정보', '설정'];

  SCSidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 라우터
    final route = ref.read(goRouterProvider);

    // 데이터
    final state = ref.watch(homePageLayoutPageProvider);

    // notifier
    final notifier = ref.read(homePageLayoutPageProvider.notifier);

    return Container(
      child: state.when(
        data: (data) {
          return Column(
            children: [
              // 홈 버튼
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  color: data.homePageModelInfo.selectedIndex == 0
                      ? Colors.red
                      : SCColors.$color_grey_05,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                    child: Center(
                      child: SCText(
                        '홈',
                        textStyle: SCTextStyle.$font_20px_w700_h100,
                        color: data.homePageModelInfo.selectedIndex == 0
                            ? SCColors.$color_grey_00
                            : Color(0xff444444),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  notifier.setSelectedIndex(value: 0);
                },
              ),
              const SizedBox(height: 40.0),

              // 상단 메뉴 리스트
              Flexible(
                child: ListView.builder(
                  itemCount: topMenuList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            width: double.infinity,
                            color: data.homePageModelInfo.selectedIndex ==
                                    index + 1
                                ? Colors.red
                                : SCColors.$color_grey_05,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 10, 12, 10),
                                child: SCText(
                                  topMenuList[index],
                                  textStyle: SCTextStyle.$font_20px_w700_h100,
                                  color: data.homePageModelInfo.selectedIndex ==
                                          index + 1
                                      ? SCColors.$color_grey_00
                                      : Color(0xff444444),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            notifier.setSelectedIndex(value: index + 1);
                          },
                        ),
                        const SizedBox(height: 40.0),
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),

              // 하단 메뉴 리스트
              Expanded(
                child: ListView.builder(
                  itemCount: bottomMenuList.length,
                  itemBuilder: (context, index) {
                    final menuItem = bottomMenuList[index];

                    return Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            width: double.infinity,
                            color: data.homePageModelInfo.selectedIndex ==
                                    index + 1 + topMenuList.length
                                ? Colors.red
                                : SCColors.$color_grey_05,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 10, 12, 10),
                                child: SCText(
                                  menuItem,
                                  textStyle: SCTextStyle.$font_20px_w700_h100,
                                  color: data.homePageModelInfo.selectedIndex ==
                                          index + 1 + topMenuList.length
                                      ? SCColors.$color_grey_00
                                      : Color(0xff444444),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            notifier.setSelectedIndex(
                                value: index + 1 + topMenuList.length);
                          },
                        ),
                        const SizedBox(height: 40.0),
                      ],
                    );
                  },
                ),
              ),

              // 잠금 버튼. 추후 이미지로 변경될 예정
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                child: GestureDetector(
                  child: SCText(
                    '잠금',
                    textStyle: SCTextStyle.$font_20px_w700_h100,
                    color: data.homePageModelInfo.isLocked == true
                        ? SCColors.$color_grey_00
                        : Color(0xff444444),
                  ),
                  onTap: () {
                    notifier.toggleIsLocked();
                  },
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => Text('error $error'),
        loading: () => const Text('로딩'),
      ),
    );
  }
}
