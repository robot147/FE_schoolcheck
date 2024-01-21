import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamplePage extends ConsumerWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              title: const SCText('예시 페이지',
                  textStyle: SCTextStyle.font_14px_w700_h100),
            ),
            body: Container(
                margin: const EdgeInsets.all(20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      SCButton.rectangle_secondary(
                        title: '버튼',
                        width: 246,
                        onPressed: () {
                          route.goNamed(RouterPath.radioButton.path);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SCButton.rectangle_secondary(
                        title: '체크박스',
                        width: 246,
                        onPressed: () {
                          route.goNamed(RouterPath.radioButton.path);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SCButton.rectangle_secondary(
                        title: '라디오 버튼',
                        width: 246,
                        onPressed: () {
                          route.goNamed(RouterPath.radioButton.path);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SCButton.rectangle_secondary(
                        title: '텍스트',
                        width: 246,
                        onPressed: () {
                          route.goNamed(RouterPath.radioButton.path);
                        },
                      ),
                    ],
                  ),
                ]))));
  }
}
