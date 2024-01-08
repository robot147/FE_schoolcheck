import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_field/text_field.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Assets.lib.assets.images.pencil.provider(),
                      fit: BoxFit.fill)),
              child: Expanded(
                  child: GestureDetector(
                      onTap: () => FocusScope.of(context).unfocus(),
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            const Expanded(
                              child: SizedBox(),
                            ),

                            //AFTER
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("rlqhs 테스트트트ㅡ asdsadsadsd"),
                                // 테스트
                                const SCText(
                                  '테스트용 텍스트',
                                  textStyle: SCTextStyle.font_600_24px_100pc_P,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter a search tttttt',
                                      labelText: '라벨'),
                                ),
                                SCTextField.closeIcon(
                                    scHintText: '입력', scIabelText: '라벨'),
                                // 아이디
                                Container(
                                  child: const TextField(),
                                ),
                                // 패스워드
                                Container(
                                  child: const TextField(),
                                ),
                                // 로그인 버튼
                                Container(
                                  child: SCButton.capsule_primary(
                                    title: '로그인',
                                    onPressed: () {
                                      route.go(RouterPath.home.path);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // 아이디 패스워드 찾기
                                Container(
                                  child: SCButton.capsule_primary(
                                    title: '아이디 / 패스워드 찾기',
                                    onPressed: () {
                                      route.go(RouterPath.home.path);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // 자동 로그인 체크박스
                                Container(
                                  child: SCButton.capsule_primary(
                                    title: '자동 로그인',
                                    onPressed: () {
                                      route.go(RouterPath.home.path);
                                    },
                                  ),
                                ),
                                // 회원가입 버튼
                                Container(
                                  child: SCButton.capsule_primary(
                                    title: '회원가입',
                                    onPressed: () {
                                      route.go(RouterPath.home.path);
                                    },
                                  ),
                                ),
                                // 구글 버튼
                                Container(
                                  child: SCButton.capsule_primary(
                                    title: '구글',
                                    onPressed: () {
                                      route.go(RouterPath.home.path);
                                    },
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ))
                  // children: [
                  //   Expanded(
                  //       child: Assets.lib.assets.images.pencil.image(fit: BoxFit.fill)),
                  //   Expanded(
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.stretch,
                  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //       children: [
                  //         //AFTER
                  //         Expanded(
                  //             child: Column(
                  //           children: [
                  //             Container(
                  //               child: const TextField(),
                  //             ),
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '로그인',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //           ],
                  //         )),
                  //       ],
                  //     ),
                  //   )
                  // ],

                  // child: Row(
                  //   children: [
                  //     const Expanded(
                  //       child: SizedBox(),
                  //     ),

                  //     //AFTER
                  //     Expanded(
                  //       child: GestureDetector(
                  //         onTap: () => FocusScope.of(context).unfocus(),
                  //         child: SingleChildScrollView(
                  //             // color: Color.fromARGB(103, 114, 48, 48),
                  //             child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             const Text("rlqhs 테스트트트ㅡ asdsadsadsd"),
                  //             // 테스트
                  //             const SCText(
                  //               '테스트용 텍스트',
                  //               textStyle: SCTextStyle.font_600_24px_100pc_P,
                  //             ),
                  //             const TextField(
                  //               decoration: InputDecoration(
                  //                   border: OutlineInputBorder(),
                  //                   hintText: 'Enter a search tttttt',
                  //                   labelText: '라벨'),
                  //             ),
                  //             SCTextField.closeIcon(
                  //                 scHintText: '입력', scIabelText: '라벨'),
                  //             // 아이디
                  //             Container(
                  //               child: const TextField(),
                  //             ),
                  //             // 패스워드
                  //             Container(
                  //               child: const TextField(),
                  //             ),
                  //             // 로그인 버튼
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '로그인',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 10,
                  //             ),
                  //             // 아이디 패스워드 찾기
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '아이디 / 패스워드 찾기',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 10,
                  //             ),
                  //             // 자동 로그인 체크박스
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '자동 로그인',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //             // 회원가입 버튼
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '회원가입',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //             // 구글 버튼
                  //             Container(
                  //               child: SCButton.capsule_primary(
                  //                 title: '구글',
                  //                 onPressed: () {
                  //                   route.go(RouterPath.home.path);
                  //                 },
                  //               ),
                  //             ),
                  //           ],
                  //         )),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  ),
            )));
  }
}
