import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //AFTER
          Center(
            child: SCButton.capsule_primary(
              title: '로그인',
              onPressed: () {
                route.go(RouterPath.home.path);
              },
            ),
            //BEFORE
            //  OutlinedButton(
            //   style: const ButtonStyle(
            //     backgroundColor: MaterialStatePropertyAll(Colors.white),
            //   ),
            //   onPressed: () {
            //     route.go(RouterPath.home.path);
            //   },
            //   child: const Text(
            //     '로그인',
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 36,
            //     ),
            //   ),
            // ),
          ),
          const SizedBox(height: 10),
          const SCText(
            '테스트용 텍스트',
            textStyle: SCTextStyle.font_600_24px_100pc_P,
          ),
          const SizedBox(height: 10),
          SCText(
            '테스트용 텍스트2',
            textStyle: SCTextStyle.font_500_16px_100pc_P,
            color: SCColors.text_primary,
          ),
          const SizedBox(height: 10),
          SCText.rich(
            TextSpan(children: [
              const TextSpan(text: '첫번째'), //기본 스타일 적용됨
              TextSpan(
                text: '두번째',
                style: SCTextStyle.font_600_24px_100pc_P.value,
              ),
              TextSpan(
                text: '세번째',
                style: SCTextStyle.font_600_32px_100pc_P.value,
              )
            ]),
            textStyle: SCTextStyle.font_400_14px_100pc_P, //기본 스타일
          ),
        ],
      ),
    );
  }
}
