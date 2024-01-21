import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text_field/text_field.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});
  bool agreeChecked1 = false;
  bool agreeChecked2 = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '스쿨체크에 오신 것을\n환영합니다!',
                  style: TextStyle(fontSize: 36),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 16.0),

                Center(
                  child: SCTextFormField(
                    lableText: '이메일',
                    hintText: 'myaccount@test.com',
                    onChanged: (String value) {},
                  ),
                ),
                Center(
                  child: SCTextFormField(
                    obscureText: true,
                    lableText: '비밀번호',
                    hintText: '숫자, 영문, 특수문자를 섞어서 설정해주세요',
                    onChanged: (String value) {},
                  ),
                ),
                Center(
                  child: SCTextFormField(
                    obscureText: true,
                    lableText: '비밀번호 확인',
                    hintText: '입력하신 비밀번호를 다시 한번 입력해주세요',
                    onChanged: (String value) {},
                  ),
                ),
                Center(
                  child: SCTextFormField(
                    lableText: '학교정보',
                    // hintText: 'myaccount@test.com',
                    onChanged: (String value) {},
                    // suffixIcon: Icon(Icons.send),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('모두 동의'),
                      // Checkbox(value: value, onChanged: onChanged)
                      Spacer(),
                      Checkbox(
                        value: agreeChecked1,
                        onChanged: (agreeChecked1) {
                          setState() {}
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('동의1'),
                      // Checkbox(value: value, onChanged: onChanged)
                      Spacer(),
                      Checkbox(
                        value: agreeChecked1,
                        onChanged: (agreeChecked1) {
                          setState() {}
                        },
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('동의2'),
                      // Checkbox(value: value, onChanged: onChanged)
                      Spacer(),
                      Checkbox(
                        value: agreeChecked1,
                        onChanged: (agreeChecked1) {
                          setState() {}
                        },
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 8.0),
                //AFTER
                Center(
                  child: SCButton.capsule_primary(
                    title: '회원가입',
                    onPressed: () {
                      route.go(RouterPath.home.path);
                    },
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      // body: verticalWidget(context, ref),
    );
  }
}
