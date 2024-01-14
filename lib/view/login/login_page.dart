import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Row(
        children: [
          //이미지
          Flexible(child: Assets.lib.assets.images.pencil.image()),
          //로그인 컨테이너
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //ID_input
                SizedBox(
                  width: 246,
                  child: SCTextInput(
                    state: SCTextInputState.enabled,
                    textInputAction: TextInputAction.next,
                    controller: SCTextInputController(),
                    focusNode: FocusNode(),
                    onFocusOffCallback: (value) {
                      print('받아온 $value');
                    },
                    topLabel: '아이디',
                  ),
                ),
                const SizedBox(height: 14),
                //PW_input
                SizedBox(
                  width: 246,
                  child: SCTextInput(
                    topLabel: '비밀번호',
                    controller: SCTextInputController(),
                    state: SCTextInputState.enabled,
                    textInputAction: TextInputAction.done,
                    needSecure: true,
                    focusNode: FocusNode(),
                    onFocusOffCallback: (p0) {
                      print('비번 $p0');
                    },
                  ),
                ),
                const SizedBox(height: 30),
                SCButton.rectangle_primary(
                  title: '로그인',
                  width: 246,
                  onPressed: () {
                    route.go(RouterPath.home.path);
                  },
                ),
                const SizedBox(height: 24),
                SCButton.rectangle_secondary(
                  title: '회원가입',
                  width: 246,
                  onPressed: () {
                    route.goNamed(RouterPath.register.path);
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
