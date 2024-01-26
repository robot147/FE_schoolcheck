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
import 'package:flutter_application_1/view/register/register_find_school_modal_view_model.dart';
import 'package:flutter_application_1/view/register/register_page_view_model.dart';
import 'package:flutter_application_1/widget/dialog.dart';
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

    final notifier = ref.read(registerPageProvider.notifier);

    return state.when(
      data: (data) {
        nowSchoolNm.text = data.registerUserInfo.school ?? '';
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
                          ),
                        ),
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
                                rightlableStyle:
                                    SCTextStyle.font_16px_w500_h100,
                              ),
                            ],
                          ),
                        ),
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
                                rightlableStyle:
                                    SCTextStyle.font_16px_w500_h100,
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
                          ),
                        ),
                        _isArrowAgreeTermOfUse
                            ? Column(children: [
                                Container(
                                    width: screenSize.width / 2,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.grey,
                                                width: 0.5)))),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                SizedBox(
                                    width: screenSize.width / 2,
                                    height: 100,
                                    child: const SingleChildScrollView(
                                        child: SCText(
                                            "이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)이용약관 동의(필수)",
                                            textStyle: SCTextStyle
                                                .font_12px_w600_h100))),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                    width: screenSize.width / 2,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey,
                                                width: 0.5)))),
                              ])
                            : const SizedBox(),
                        SizedBox(
                            height: 35,
                            width: screenSize.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SCCheckbox(
                                  isChecked:
                                      _isCheckAgreePrivateCollectionAndUse,
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
                                  rightlableStyle:
                                      SCTextStyle.font_16px_w500_h100,
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
                                                color: Colors.grey,
                                                width: 0.5)))),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                SizedBox(
                                    width: screenSize.width / 2,
                                    height: 100,
                                    child: const SingleChildScrollView(
                                        child: SCText(
                                            "개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수) 개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)개인정보 수집 및 이용 동의(필수)",
                                            textStyle: SCTextStyle
                                                .font_12px_w600_h100))),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                    width: screenSize.width / 2,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey,
                                                width: 0.5)))),
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
                                      FocusScope.of(context).requestFocus(
                                          _isFocusNodeAgreeTermOfUse);
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
                                    notifier.setName(value);
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
                                    notifier.setEmail(value);
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
                                    notifier.setPassword(value);
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
                                      notifier.setPasswordValidate(value);
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
                                        state: SCTextInputState.disabled,
                                        textInputAction: TextInputAction.next,
                                        controller: nowSchoolNm,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 15, 0, 0),
                                      child: SCButton.rectangle_secondary(
                                        title: '학교 찾기',
                                        width: screenSize.width / 10.5,
                                        onPressed: () async {
                                          await SCDialog.singleDialog<String>(
                                            context: context,
                                            size: SCDialogSize.medium,
                                            title: '학교 찾기',
                                            height: 593,
                                            childBuilder: (popDialog) {
                                              return Column(
                                                children: [
                                                  RegisterSearchSchoolModal(),
                                                  SCButton.rectangle_primary(
                                                    width: 104,
                                                    title: '닫기',
                                                    onPressed: () async {
                                                      popDialog('modal Exit');
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
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
                                  print('test002');
                                  // setState(() {
                                  //   _isPage = true;
                                  // });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SCButton.rectangle_primary(
                                title: '가입하기',
                                width: screenSize.width / 4 - 5,
                                onPressed: () {
                                  print(data.registerUserInfo);
                                  setState(() {
                                    showToast(false);
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
      },
      error: (error, stackTrace) => Text('error $error'),
      loading: () => const Text('로딩'),
    );
  }
}

// 학교 검색 모달
class RegisterSearchSchoolModal extends ConsumerWidget {
  RegisterSearchSchoolModal({super.key});

  SCTextInputController searchSchoolNm1 = SCTextInputController();

  TextEditingController myController = TextEditingController();
  FocusNode focus = FocusNode();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerFindSchoolModalProvider);

    final notifier = ref.read(registerFindSchoolModalProvider.notifier);
    return state.when(
      data: (data) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SCText(
                  '학교 찾기',
                  textStyle: SCTextStyle.font_20px_w700_h100,
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 550,
                      // 컨트롤러 이슈 - SCTextController.text를 변수로 가져오지 못함.
                      child: SCTextInput(
                        state: SCTextInputState.enabled,
                        textInputAction: TextInputAction.next,
                        controller: searchSchoolNm1,
                        focusNode: focus,
                        showFlush: true,
                        onFocusOffCallback: (value) {
                          print('controller val is ${searchSchoolNm1.text}');
                          print('받아온 $value');
                        },
                      ),
                      // child: TextField(
                      //   controller: myController,
                      //   focusNode: focus,
                      // ),
                    ),
                    const SizedBox(width: 14.0),
                    SCButton.rectangle_secondary(
                      width: 104,
                      title: '학교 찾기',
                      onPressed: () {
                        print('searchSchoolNm1 is ${searchSchoolNm1.text}');
                        notifier.getSchoolInfo(
                            searchSchoolNm: searchSchoolNm1.text);
                        print('data is $data');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                // 검색된 학교 리스트 컨테이너
                Container(
                  width: 670,
                  height: 300,
                  // color: Colors.orange,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Border 색상 설정
                      width: 1.0, // Border 두께 설정
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 48,
                              color: SCColors.color_grey_05,
                              child: const Center(
                                child: SCText(
                                  '학교 정보',
                                  textStyle: SCTextStyle.font_14px_w400_h100,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 48,
                              color: SCColors.color_grey_05,
                              child: const Center(
                                child: SCText(
                                  '학교 주소',
                                  textStyle: SCTextStyle.font_14px_w400_h100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // 검색된 학교 리스트
                      Container(
                        height: 250,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (SchoolInfoData i in data!)
                                searchedSchoolWidget(i, ref),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => Text('error $error'),
      loading: () => const Text('로딩'),
    );
  }
}

// 검색된 학교 위젯
Widget searchedSchoolWidget(SchoolInfoData data, WidgetRef ref) {
  final modalNotifier = ref.read(registerFindSchoolModalProvider.notifier);
  final pageNotifier = ref.read(registerPageProvider.notifier);
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.7,
      ),
      // 선택된 항목 색깔 입히기
      color: data.schoolInfo.isSelected == true ? Colors.blue : Colors.white,
    ),
    child: GestureDetector(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 48,
              child: Center(
                child: SCText(
                  data.schoolInfo.schoolName.toString(),
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color:
              //     Colors.orange,
              height: 48,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SCText(
                  data.schoolInfo.adres.toString(),
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () async {
        // 회원가입 페이지 학교 정보 수정
        await pageNotifier.setUserSchool(data: data.schoolInfo);
        // 학교 찾기 모달 선택된 학교 수정
        await modalNotifier.setSchoolChecked(data: data);
      },
    ),
  );
}
