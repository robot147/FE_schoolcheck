import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/checkbox/checkbox.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/register/register_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends ConsumerState<RegisterPage> {
  final _controllerName = SCTextInputController();

  final nowSchoolNm = SCTextInputController();

  // 전체 동의
  bool _isCheckAgreeAll = false;
  // 이용약관 동의(필수)
  bool _isCheckAgreeTermOfUse = false;
  // 개인정보 수집 및 이용 동의(필수)
  bool _isCheckAgreePrivateCollectionAndUse = false;

  // 이용약관 동의 내용
  bool _isArrowAgreeTermOfUse = true;
  // 개인정보 수집 및 이용 동의 내용
  bool _isArrowAgreePrivateCollectionAndUse = false;

  final _isFocusNodeAgreeTermOfUse = FocusNode();
  final _isFocusNodeAgreePrivateCollectionAndUse = FocusNode();

  bool _isPage = true; // true : 1페이지 / false : 2페이지

  void checkBoxEvent(name, val) {
    switch (name) {
      case 'All':
        _isCheckAgreeTermOfUse = val;
        _isCheckAgreePrivateCollectionAndUse = val;
        break;
      case 'TermOfUse':
        _isCheckAgreeTermOfUse = val;
        break;
      case 'PrivateCollectionAndUse':
        _isCheckAgreePrivateCollectionAndUse = val;
        break;
    }
    if (_isCheckAgreeTermOfUse && _isCheckAgreePrivateCollectionAndUse) {
      setState(() {
        _isCheckAgreeAll = true;
      });
    } else {
      setState(() {
        _isCheckAgreeAll = false;
      });
    }
  }

  void showToast(passWordValidation) {
    Fluttertoast.showToast(
        msg: passWordValidation
            ? '비밀번호가 일치하지 않습니다.'
            : '필수 이용약관에 모두 동의해야 가입할 수 있어요.',
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.black,
        fontSize: 16,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    final route = ref.read(goRouterProvider);

    final state = ref.watch(registerPageProvider);

    final screenSize = MediaQuery.of(context).size;

    if (_isPage) {
      // 1 페이지
      return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: screenSize.width,
                height: screenSize.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: screenSize.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SCText('회원가입',
                                textStyle: SCTextStyle.font_24px_w700_h100),
                            SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                )),
                          ],
                        )),
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                        height: 35,
                        width: screenSize.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SCCheckbox(
                              isChecked: _isCheckAgreeAll,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxEvent('All', value);
                                });
                              },
                              tristate: false,
                              rightlabel: '전체동의',
                              rightlableStyle: SCTextStyle.font_16px_w500_h100,
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 35,
                        width: screenSize.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SCCheckbox(
                              isChecked: _isCheckAgreeTermOfUse,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxEvent('TermOfUse', value);
                                });
                              },
                              tristate: false,
                              focusNode: _isFocusNodeAgreeTermOfUse,
                              rightlabel: '이용약관 동의(필수)',
                              rightlableStyle: SCTextStyle.font_16px_w500_h100,
                            ),
                            InkWell(
                              child: _isArrowAgreeTermOfUse
                                  ? const Icon(IconData(0xf578,
                                      fontFamily: 'MaterialIcons'))
                                  : const Icon(IconData(0xf577,
                                      fontFamily: 'MaterialIcons')),
                              onTap: () {
                                setState(() {
                                  _isArrowAgreeTermOfUse =
                                      !_isArrowAgreeTermOfUse;
                                });
                              },
                            )
                          ],
                        )),
                    _isArrowAgreeTermOfUse
                        ? Column(children: [
                            Container(
                                width: screenSize.width / 2,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5)))),
                            const SizedBox(
                              height: 8.0,
                            ),
                            SizedBox(
                                width: screenSize.width / 2,
                                height: 100,
                                child: const SingleChildScrollView(
                                    child: SCText(
                                        "이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)",
                                        textStyle:
                                            SCTextStyle.font_12px_w600_h100))),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Container(
                                width: screenSize.width / 2,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 0.5)))),
                          ])
                        : const SizedBox(),
                    SizedBox(
                        height: 35,
                        width: screenSize.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SCCheckbox(
                              isChecked: _isCheckAgreePrivateCollectionAndUse,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxEvent(
                                      'PrivateCollectionAndUse', value);
                                });
                              },
                              tristate: false,
                              focusNode:
                                  _isFocusNodeAgreePrivateCollectionAndUse,
                              rightlabel: '개인정보 수집 및 이용 동의(필수)',
                              rightlableStyle: SCTextStyle.font_16px_w500_h100,
                            ),
                            InkWell(
                              child: _isArrowAgreePrivateCollectionAndUse
                                  ? const Icon(IconData(0xf578,
                                      fontFamily: 'MaterialIcons'))
                                  : const Icon(IconData(0xf577,
                                      fontFamily: 'MaterialIcons')),
                              onTap: () {
                                setState(() {
                                  _isArrowAgreePrivateCollectionAndUse =
                                      !_isArrowAgreePrivateCollectionAndUse;
                                });
                              },
                            )
                          ],
                        )),
                    _isArrowAgreePrivateCollectionAndUse
                        ? Column(children: [
                            Container(
                                width: screenSize.width / 2,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5)))),
                            const SizedBox(
                              height: 8.0,
                            ),
                            SizedBox(
                                width: screenSize.width / 2,
                                height: 100,
                                child: const SingleChildScrollView(
                                    child: SCText(
                                        "개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)",
                                        textStyle:
                                            SCTextStyle.font_12px_w600_h100))),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Container(
                                width: screenSize.width / 2,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 0.5)))),
                          ])
                        : const SizedBox(),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 35,
                      width: screenSize.width / 2,
                      child: Row(
                        children: [
                          SCButton.rectangle_tertiary(
                            title: '취소',
                            width: screenSize.width / 4 - 5,
                            onPressed: () {
                              route.go(RouterPath.login.path);
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SCButton.rectangle_primary(
                            title: '다음',
                            width: screenSize.width / 4 - 5,
                            onPressed: () {
                              setState(() {
                                if (!_isCheckAgreeTermOfUse) {
                                  FocusScope.of(context)
                                      .requestFocus(_isFocusNodeAgreeTermOfUse);
                                  showToast(false);
                                } else if (!_isCheckAgreePrivateCollectionAndUse) {
                                  FocusScope.of(context).requestFocus(
                                      _isFocusNodeAgreePrivateCollectionAndUse);
                                  showToast(false);
                                } else {
                                  _isPage = false;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ));
    } else {
      // 2 페이지
      return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: screenSize.width,
                height: screenSize.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: screenSize.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SCText('회원가입',
                                textStyle: SCTextStyle.font_24px_w700_h100),
                            SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                )),
                          ],
                        )),
                    const SizedBox(
                      height: 70,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenSize.width / 2,
                          child: SizedBox(
                            width: 246,
                            child: SCTextInput(
                              state: SCTextInputState.enabled,
                              textInputAction: TextInputAction.next,
                              controller: _controllerName,
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                print('받아온 $value');
                              },
                              topLabel: '이름',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: screenSize.width / 2,
                          child: SizedBox(
                            width: 246,
                            child: SCTextInput(
                              state: SCTextInputState.enabled,
                              textInputAction: TextInputAction.next,
                              controller: SCTextInputController(),
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                print('받아온 $value');
                              },
                              topLabel: '이메일',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: screenSize.width / 2,
                          child: SizedBox(
                            width: 246,
                            child: SCTextInput(
                              state: SCTextInputState.enabled,
                              textInputAction: TextInputAction.next,
                              controller: SCTextInputController(),
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                print('받아온 $value');
                              },
                              topLabel: '비밀번호',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: screenSize.width / 2,
                            child: SizedBox(
                              width: 246,
                              child: SCTextInput(
                                state: SCTextInputState.enabled,
                                textInputAction: TextInputAction.next,
                                controller: SCTextInputController(),
                                focusNode: FocusNode(),
                                onFocusOffCallback: (value) {
                                  print('받아온 $value');
                                },
                                topLabel: '비밀번호 확인',
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: screenSize.width / 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: screenSize.width / 2.5,
                                  child: SCTextInput(
                                    state: SCTextInputState.enabled,
                                    textInputAction: TextInputAction.next,
                                    controller: SCTextInputController(),
                                    focusNode: FocusNode(),
                                    onFocusOffCallback: (value) {
                                      print('받아온 $value');
                                    },
                                    topLabel: '학교',
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: SCButton.rectangle_secondary(
                                    title: '학교 찾기',
                                    width: screenSize.width / 10.5,
                                    onPressed: () {
                                      print("학교 찾기 버튼");
                                    },
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 35,
                      width: screenSize.width / 2,
                      child: Row(
                        children: [
                          SCButton.rectangle_tertiary(
                            title: '뒤로가기',
                            width: screenSize.width / 4 - 5,
                            onPressed: () {
                              setState(() {
                                _isPage = true;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SCButton.rectangle_primary(
                            title: '가입하기',
                            width: screenSize.width / 4 - 5,
                            onPressed: () {
                              setState(() {
                                showToast(true);
                                // route.go(RouterPath.login.path);
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ));
    }
  }
}
