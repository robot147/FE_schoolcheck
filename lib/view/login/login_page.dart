import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/login/login_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../design_system/check_boxs/check_box.dart';
import '../../design_system/text_field/text_field.dart';
import '../../gen/assets.gen.dart';
import '../../model/user_data.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: SCTextFormField(
      //         hintText: '아이디를 입력해주세요.',
      //         onChanged: (String value) {},
      //       ),
      //     ),
      //     Center(
      //       child: SCTextFormField(
      //         hintText: '비밀번호를 입력해주세요.',
      //         onChanged: (String value) {},
      //       ),
      //     ),
      //     //AFTER
      //     Center(
      //       child: SCButton.capsule_primary(
      //         title: '로그인',
      //         onPressed: () {
      //           route.go(RouterPath.home.path);
      //         },
      //       ),
      //     ),
      //     const SizedBox(height: 10),
      //     const SCText(
      //       '테스트용 텍스트',
      //       textStyle: SCTextStyle.font_600_24px_100pc_P,
      //     ),
      //     const SizedBox(height: 10),
      //     SCText(
      //       '테스트용 텍스트2',
      //       textStyle: SCTextStyle.font_500_16px_100pc_P,
      //       color: SCColors.text_primary,
      //     ),
      //     const SizedBox(height: 10),
      //     SCText.rich(
      //       TextSpan(children: [
      //         const TextSpan(text: '첫번째'), //기본 스타일 적용됨
      //         TextSpan(
      //           text: '두번째',
      //           style: SCTextStyle.font_600_24px_100pc_P.value,
      //         ),
      //         TextSpan(
      //           text: '세번째',
      //           style: SCTextStyle.font_600_32px_100pc_P.value,
      //         )
      //       ]),
      //       textStyle: SCTextStyle.font_400_14px_100pc_P, //기본 스타일
      //     ),
      //   ],
      // ),
      body: verticalWidget(context, ref),
    );
  }
}

// 가로모드일 때 위젯 뷰
Widget verticalWidget(BuildContext context, WidgetRef ref) {
  final route = ref.read(goRouterProvider);

  final state = ref.watch(loginPageProvider(page: 1));

  final notifier = ref.read(loginPageProvider(page: 1).notifier);

  return state.when(
    data: (data) {
      return Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.amber,
              child: Assets.lib.assets.images.pencil.image(fit: BoxFit.fill),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 로그인 페이지 타이틀
                  Text(
                    '스쿨체크에 오신 것을\n환영합니다!',
                    style: TextStyle(fontSize: 36),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20.0),

                  // 아이디 입력 텍스트필드
                  Center(
                    child: SCTextFormField(
                      hintText: '아이디를 입력해주세요.',
                      onChanged: (String value) {
                        notifier.setUserId(id: value);
                      },
                    ),
                  ),

                  // 비밀번호 입력 텍스트필드
                  Center(
                    child: SCTextFormField(
                      hintText: '비밀번호를 입력해주세요.',
                      obscureText: true,
                      onChanged: (String value) {
                        notifier.setUserPassword(password: value);
                      },
                    ),
                  ),

                  SizedBox(
                    height: 16.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 로그인 버튼
                      SCButton.capsule_primary(
                        title: '로그인',
                        onPressed: () async {
                          try {
                            // 로그인 로직 호출
                            await notifier.login(
                              user: User(
                                  id: data!.userInfo.id,
                                  password: data.userInfo.password),
                            );
                            // 로그인 성공시 라우팅
                            route.go(RouterPath.home.path);
                          } catch (e) {
                            // 로그인 실패시 분기
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('로그인에 실패했습니다.'),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      // 회원가입 버튼
                      SCButton.capsule_primary(
                        title: '회원가입',
                        onPressed: () {
                          route.pushNamed(RouterPath.signUpPage.name);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SCButton.capsule_primary(
                    title: '로그인2',
                    onPressed: () async {
                      try {
                        // 로그인 로직 호출
                        await notifier.login(
                          user: User(
                              id: data!.userInfo.id,
                              password: data.userInfo.password),
                        );
                        // 로그인 성공시 라우팅
                        route.go(RouterPath.newHome.path);
                      } catch (e) {
                        // 로그인 실패시 분기
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('로그인에 실패했습니다.'),
                          ),
                        );
                      }
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: SCText(
                          'ID찾기/PW찾기',
                          textStyle: SCTextStyle.$font_14px_w700_h100,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        // 자동 로그인 / ID 저장 체크박스
                        // viewModel 데이터 연동해서 value 컨트롤 해야됨
                        SCCheckBox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        SCText('자동 로그인 / ID 저장',
                            textStyle: SCTextStyle.$font_14px_w700_h100),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SCButton.capsule_login_api(
                          width: 60,
                          title: '구글',
                          onPressed: () {
                            route.go(RouterPath.home.path);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SCButton.capsule_login_api(
                          width: 60,
                          title: '카카오',
                          onPressed: () {
                            route.go(RouterPath.home.path);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SCButton.capsule_login_api(
                          width: 60,
                          title: '네이버',
                          onPressed: () {
                            route.go(RouterPath.home.path);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SCButton.capsule_login_api(
                          width: 60,
                          title: '애플',
                          onPressed: () {
                            route.go(RouterPath.home.path);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
    error: (error, stackTrace) => Text('error $error'),
    loading: () => const Text('로딩'),
  );
}
