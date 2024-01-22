import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/view/home/home_page.dart';
import 'package:flutter_application_1/widget/sidebar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
