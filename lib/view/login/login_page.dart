import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
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
                const SizedBox(height: 24),
                SCButton.rectangle_secondary(
                  title: '회원가입 - API 임시',
                  width: 246,
                  onPressed: () {
                    route.goNamed(RouterPath.registerTemp.path);
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
                          // route.pushNamed(RouterPath.signUpPage.name);
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
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      //   child: SCText(
                      //     'ID찾기/PW찾기',
                      //     textStyle: SCTextStyle.$font_14px_w700_h100,
                      //     textAlign: TextAlign.left,
                      //   ),
                      // ),
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
                        // SCText('자동 로그인 / ID 저장',
                        //     textStyle: SCTextStyle.$font_14px_w700_h100),
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
