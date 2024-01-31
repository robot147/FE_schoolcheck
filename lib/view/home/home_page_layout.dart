import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/home/sidebar_layout_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageLayout extends ConsumerWidget {
  final Widget? sidebarWidget;
  final AppBar? appbarWidget;
  final Widget? contentsWidget;

  HomePageLayout({
    super.key,
    this.sidebarWidget,
    this.appbarWidget,
    this.contentsWidget,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: appbarWidget ?? AppBar(),
      body: Row(
        children: [
          // 사이드바 영역
          Container(
            color: SCColors.$color_grey_05,
            width: 90.0,
            child: SCSidebar(),
          ),
          Expanded(
            // Container()에 홈 위젯 넣어야할듯?
            child: contentsWidget ?? Container(),
          ),
        ],
      ),
    );
  }
}

// 메인 컨텐츠 사이드바
class SCSidebar extends ConsumerWidget {
  // 상단 메뉴 리스트 -> 추후 프로바이더에 통합 예정
  List<Map<String, dynamic>> topMenuList = [
    {'menu': '관찰', 'route': 'routeName'},
    {'menu': '체크', 'route': 'routeName'},
    {'menu': '통계', 'route': 'routeName'},
  ];

  // 하단 메뉴 리스트 -> 추후 프로바이더에 통합 예정
  List<Map<String, dynamic>> bottomMenuList = [
    {'menu': '목록', 'route': 'routeName'},
    {'menu': '관리', 'route': RouterPath.managementPage.name},
    {'menu': '내정보', 'route': 'routeName'},
  ];

  SCSidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 라우터
    final route = ref.read(goRouterProvider);

    // 데이터
    final state = ref.watch(sidebarLayoutPageProvider);

    // notifier
    final notifier = ref.read(sidebarLayoutPageProvider.notifier);

    return Container(
      child: state.when(
        data: (data) {
          return Column(
            children: [
              // 홈 버튼
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  color: data.sidebarModel.selectedIndex == 0
                      ? Colors.red
                      : SCColors.$color_grey_05,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                    child: Center(
                      child: SCText(
                        '홈',
                        textStyle: SCTextStyle.$font_20px_w700_h100,
                        color: data.sidebarModel.selectedIndex == 0
                            ? SCColors.$color_grey_00
                            : Color(0xff444444),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  notifier.setSelectedIndex(value: 0);
                  route.goNamed(RouterPath.newHome.name);
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
                            color: data.sidebarModel.selectedIndex == index + 1
                                ? Colors.red
                                : SCColors.$color_grey_05,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 10, 12, 10),
                                child: SCText(
                                  topMenuList[index]['menu'],
                                  textStyle: SCTextStyle.$font_20px_w700_h100,
                                  color: data.sidebarModel.selectedIndex ==
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
                            color: data.sidebarModel.selectedIndex ==
                                    index + 1 + topMenuList.length
                                ? Colors.red
                                : SCColors.$color_grey_05,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 10, 12, 10),
                                child: SCText(
                                  menuItem['menu'],
                                  textStyle: SCTextStyle.$font_20px_w700_h100,
                                  color: data.sidebarModel.selectedIndex ==
                                          index + 1 + topMenuList.length
                                      ? SCColors.$color_grey_00
                                      : Color(0xff444444),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            print('selected route is ${menuItem['route']}');
                            notifier.setSelectedIndex(
                                value: index + 1 + topMenuList.length);
                            route.goNamed(menuItem['route']);
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
                    color: data.sidebarModel.isLocked == true
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
