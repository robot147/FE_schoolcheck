import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/login/login_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    final state = ref.watch(loginPageProvider); //열어둬야함...
    final notifier = ref.read(loginPageProvider.notifier);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Row(
          children: [
            //이미지
            Assets.lib.assets.images.loginBg.image(),

            //로그인 컨테이너
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //email_input
                  SizedBox(
                    width: 417,
                    child: SCTextInput(
                      state: SCTextInputState.enabled,
                      textInputAction: TextInputAction.next,
                      controller: SCTextInputController(),
                      focusNode: FocusNode(),
                      placeHolder: '입력',
                      onFocusOffCallback: (value) {
                        notifier.setter(email: value);
                      },
                      topLabel: '이메일',
                    ),
                  ),
                  const SizedBox(height: 14),
                  //PW_input
                  SizedBox(
                    width: 417,
                    child: SCTextInput(
                      topLabel: '비밀번호',
                      controller: SCTextInputController(),
                      state: SCTextInputState.enabled,
                      textInputAction: TextInputAction.done,
                      placeHolder: '입력',
                      needSecure: true,
                      focusNode: FocusNode(),
                      onFocusOffCallback: (value) {
                        notifier.setter(pw: value);
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 417,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SCButton.linked(
                          title: '이메일 찾기',
                          onPressed: () {},
                        ),
                        SCText(
                          '|',
                          textStyle: SCTextStyle.font_14px_w500_h100,
                          color: SCColors.color_grey_20,
                        ),
                        SCButton.linked(
                          title: '비밀번호 찾기',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 64),
                  SCButton.rectangle_primary(
                    title: '로그인',
                    width: 417,
                    onPressed: () async {
                      FocusScope.of(context).unfocus();
                      final validationResult = notifier.validationCheck();
                      if (validationResult == null) {
                        //통과
                        final isSuccess = await notifier.postLogin();
                        if (isSuccess) {
                          route.go(RouterPath.home.path);
                        } else {
                          //로그인 실패
                        }
                      } else {
                        //실패
                        showTopSnackBar(
                          Overlay.of(context),
                          SizedBox(
                            height: 65,
                            child: CustomSnackBar.info(
                              message: validationResult,
                              textStyle: SCTextStyle.font_14px_w400_h100.value
                                  .copyWith(
                                color: SCColors.color_grey_00,
                              ),
                              borderRadius: BorderRadius.zero,
                              backgroundColor: SCColors.color_grey_85,
                            ),
                          ),
                          displayDuration: const Duration(seconds: 1),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 8),
                  SCButton.rectangle_secondary(
                    title: '회원가입',
                    width: 417,
                    onPressed: () {
                      route.goNamed(RouterPath.register.name);
                    },
                  ),
                  const SizedBox(height: 8),
                  SCButton.rectangle_primary(
                    title: '로그인 - 레이아웃 테스트',
                    width: 417,
                    onPressed: () {
                      route.go(RouterPath.newHome.path);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
