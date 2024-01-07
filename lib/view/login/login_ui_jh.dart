import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../../router/router.dart';
import '../../router/router_path.dart';

class LoginUi extends ConsumerWidget {
  LoginUi({super.key});
  // bool _isChecked = false;

  TextEditingController idInputController = TextEditingController();
  TextEditingController pwInputController = TextEditingController();

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Widget _inputArea(
    TextEditingController inputController,
    BuildContext context,
    String? hint,
  ) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.20,
      height: 45,
      child: TextField(
          controller: inputController,
          decoration: InputDecoration(
              hintText: hint ?? "",
              helperStyle: const TextStyle(color: Colors.black),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )))),
    );
  }

  Widget _infBtn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  // id 찾기 이동
                },
                child: const SCText("ID 찾기", textStyle: SCTextStyle.jhtext)),
            const Text(" / "),
            GestureDetector(
                onTap: () {
                  // pw 찾기 이동
                },
                child:
                    const SCText("password 찾기", textStyle: SCTextStyle.jhtext)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: false,
                onChanged: (value) {
                  // _isChecked = value!; // 나중 riverpod 결합 후 구현
                }),
            const SCText("자동로그인", textStyle: SCTextStyle.jhtext),
            const Text(" / "),
            const SCText("ID 저장", textStyle: SCTextStyle.jhtext)
          ],
        )
      ],
    );
  }

  Widget _snslogin(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SCButton.login_signup(
              title: "구글",
              onPressed: () {
 route.pushNamed(RouterPath.memberPage.name,
                        pathParameters: {'memberId': '1'});
                // memberPage
              },
              width: MediaQuery.of(context).size.width * 0.045,
            ),
            const SizedBox(
              width: 8,
            ),
            SCButton.login_signup(
              title: "카카오",
              onPressed: () {},
              width: MediaQuery.of(context).size.width * 0.045,
            ),
            const SizedBox(
              width: 8,
            ),
            SCButton.login_signup(
              title: "네이버",
              onPressed: () {},
              width: MediaQuery.of(context).size.width * 0.045,
            ),
            const SizedBox(
              width: 8,
            ),
            SCButton.login_signup(
              title: "애플",
              onPressed: () {},
              width: MediaQuery.of(context).size.width * 0.045,
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);

    return GestureDetector(
      onTap: unfocusKeyboard,
      child: Scaffold(
          resizeToAvoidBottomInset: false, // 키보드 올라왔을 때 오버플로우 없이 그냥 덮기
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // 임시 이미지
              Assets.lib.assets.images.pencil
                  .image(width: MediaQuery.of(context).size.width * 0.45),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _inputArea(idInputController, context, "id"),
                    const SizedBox(
                      height: 15,
                    ),
                    _inputArea(pwInputController, context, "pw"),
                    const SizedBox(
                      height: 25,
                    ),
                    SCButton.login_signup(
                      title: "로그인",
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * 0.20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _infBtn(),
                    const SizedBox(
                      height: 25,
                    ),
                    SCButton.login_signup(
                      title: "회원가입",
                      onPressed: () {
                        route.pushNamed(RouterPath.signup.path);
                      },
                      width: MediaQuery.of(context).size.width * 0.20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _snslogin(context, ref)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
