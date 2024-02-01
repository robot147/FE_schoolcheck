import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/home/home_page_layout.dart';
import 'package:flutter_application_1/widget/dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageNew extends ConsumerWidget {
  const HomePageNew({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HomePageLayout(
      appbarWidget: myAppBar(context, ref),
      contentsWidget: homeWidget(context, ref),
    );
  }
}

AppBar myAppBar(BuildContext context, WidgetRef ref) {
  return AppBar(
    title: const Text('홈'),
  );
}

Widget homeWidget(BuildContext context, WidgetRef ref) {
  final route = ref.read(goRouterProvider);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SCButton.rectangle_secondary(
        width: 240,
        title: '로그인 페이지',
        onPressed: () {
          route.pushNamed(RouterPath.login.name);
        },
      ),
      //모달 띄우기 예시
      OutlinedButton(
        onPressed: () async {
          final result =
              await SCDialog.navigatedDialog(context: context, subDialog: [
            SCSubDialog<bool?>(
              path: '/',
              title: '1번 모달',
              height: 170,
              size: SCDialogSize.large,
              childBuilder: (popDialog, push, arg) {
                return Column(
                  children: [
                    const SCText(
                      '1번 입니다.',
                      textStyle: SCTextStyle.font_20px_w700_h100,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SCButton.rectangle_secondary(
                          title: '닫기',
                          onPressed: () {
                            popDialog(null);
                          },
                        ),
                        const SizedBox(width: 24),
                        SCButton.rectangle_primary(
                          title: '다음',
                          onPressed: () {
                            push('/2');
                          },
                        )
                      ],
                    )
                  ],
                );
              },
            ),
            SCSubDialog<bool?>(
              path: '/2',
              title: '2번 모달',
              height: 170,
              size: SCDialogSize.small,
              childBuilder: (popDialog, push, arg) {
                return Column(
                  children: [
                    const SCText(
                      '2번 입니다.',
                      textStyle: SCTextStyle.font_14px_w400_h100,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SCButton.capsule_primary(
                          title: '닫기',
                          onPressed: () {
                            popDialog(null);
                          },
                        ),
                        SCButton.capsule_primary(
                          title: '다음',
                          onPressed: () {
                            push('/3', param: {'id': '200'});
                          },
                        )
                      ],
                    )
                  ],
                );
              },
            ),
            SCSubDialog<bool?>(
              path: '/3',
              title: '3번 모달',
              height: 170,
              size: SCDialogSize.small,
              childBuilder: (popDialog, push, arg) {
                final id = arg?['id'] ?? '';
                return Column(
                  children: [
                    SCText(
                      '3번 입니다. 받아온 arg: $id',
                      textStyle: SCTextStyle.font_12px_w600_h100,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SCButton.capsule_primary(
                          title: '끝',
                          onPressed: () {
                            popDialog(true);
                          },
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ]);

          if (result != null) {
            print('3번까지 모두 완료');
          } else {
            print('중간에 모달 닫음');
          }
        },
        child: const SCText(
          '모달 띄우기',
          textStyle: SCTextStyle.font_14px_w400_h100,
        ),
      ),

      //TO-USE (assets 사용)
      Assets.lib.assets.icons.iconAdd.svg(width: 50, height: 50),
      Assets.lib.assets.lottie.lot.lottie(width: 200, height: 200),

      Assets.lib.assets.icons.pie.image(width: 70, height: 70),
      Assets.lib.assets.images.pencil.image(height: 150),

      Center(
        child: ElevatedButton(
            onPressed: () {
              route.pushNamed(RouterPath.memberPage.name,
                  pathParameters: {'memberId': '1'});
            },
            child: const Text('회원 페이지')),
      ),
    ],
  );
}
