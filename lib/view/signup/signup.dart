import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../design_system/text/text.dart';
import '../../router/router.dart';
import '../../router/router_path.dart';

class SCSignup extends ConsumerWidget {
  SCSignup({super.key});
  TextEditingController emailInputController = TextEditingController();
  TextEditingController pwInputController = TextEditingController();
  TextEditingController repwInputController = TextEditingController();

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Widget _inputArea(
    TextEditingController inputController,
    BuildContext context,
    String? hint,
  ) {
    return Container(
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

  Widget _checkbox(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SCText("모두 동의",
                  textStyle: SCTextStyle.jhtext),
              Checkbox(
                  value: false,
                  onChanged: (value) {
                    // _isChecked = value!; // 나중 riverpod 결합 후 구현
                  })
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SCText("동의1", textStyle: SCTextStyle.jhtext),
              Checkbox(
                  value: false,
                  onChanged: (value) {
                    // _isChecked = value!; // 나중 riverpod 결합 후 구현
                  })
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SCText("동의2", textStyle: SCTextStyle.jhtext),
              Checkbox(
                  value: false,
                  onChanged: (value) {
                    // _isChecked = value!; // 나중 riverpod 결합 후 구현
                  })
            ],
          ),
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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _inputArea(emailInputController, context, "이메일"),
              SizedBox(
                height: 20,
              ),
              _inputArea(emailInputController, context, "패스워드"),
              SizedBox(
                height: 20,
              ),
              _inputArea(emailInputController, context, "패스워드 확인"),
              SizedBox(
                height: 20,
              ),
              _inputArea(emailInputController, context, "학교정보"),
              SizedBox(
                height: 20,
              ),
              _checkbox(context),
              SizedBox(
                height: 15,
              ),
              SCButton.login_signup(
                title: "가입",
                onPressed: () {},
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                height: 20,
              ),
              SCButton.login_signup(
                title: "뒤로가기",
                onPressed: () {
                  route.pop();
                },
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
