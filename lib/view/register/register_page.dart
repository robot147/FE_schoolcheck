import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/checkbox/checkbox.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/register/register_page_view_model.dart';
import 'package:flutter_application_1/widget/dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:flutter_application_1/view/register/register_search_school_modal.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerPageProvider); //열어둬야함...

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: state.when(
        data: (data) {
          print('is reRendered');
          if (state.value!.isPage) {
            // 1 페이지
            return onePage(context, ref, screenSize);
          } else {
            // 2 페이지
            return twoPage(context, ref, screenSize);
          }
        },
        error: (error, stackTrace) => Text('error $error'),
        loading: () => const Text('로딩'),
      ),
    );
  }

  Widget onePage(BuildContext context, WidgetRef ref, Size screenSize) {
    final route = ref.read(goRouterProvider);
    final state = ref.watch(registerPageProvider); //열어둬야함...
    final notifier = ref.read(registerPageProvider.notifier);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: SizedBox(
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
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
                        isChecked: state.value!.isCheckAgreeAll,
                        onChanged: (value) {
                          notifier.updateIsCheckAgreeAll(isCheck: value!);
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
                        isChecked: state.value!.isCheckAgreeTermOfUse,
                        onChanged: (value) {
                          notifier.updateIsCheckAgreeTermOfUse(isCheck: value!);
                        },
                        tristate: false,
                        rightlabel: '이용약관 동의(필수)',
                        rightlableStyle: SCTextStyle.font_16px_w500_h100,
                      ),
                      InkWell(
                        child: state.value!.isArrowAgreeTermOfUse
                            ? const Icon(
                                IconData(0xf578, fontFamily: 'MaterialIcons'))
                            : const Icon(
                                IconData(0xf577, fontFamily: 'MaterialIcons')),
                        onTap: () {
                          notifier.updateIsArrowAgreeTermOfUse(
                              isCheck: !state.value!.isArrowAgreeTermOfUse);
                        },
                      )
                    ],
                  )),
              state.value!.isArrowAgreeTermOfUse
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
                                  textStyle: SCTextStyle.font_12px_w600_h100))),
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
                        isChecked:
                            state.value!.isCheckAgreePrivateCollectionAndUse,
                        onChanged: (value) {
                          notifier.updateIsCheckAgreePrivateCollectionAndUse(
                              isCheck: value!);
                        },
                        tristate: false,
                        rightlabel: '개인정보 수집 및 이용 동의(필수)',
                        rightlableStyle: SCTextStyle.font_16px_w500_h100,
                      ),
                      InkWell(
                        child: state.value!.isArrowAgreePrivateCollectionAndUse
                            ? const Icon(
                                IconData(0xf578, fontFamily: 'MaterialIcons'))
                            : const Icon(
                                IconData(0xf577, fontFamily: 'MaterialIcons')),
                        onTap: () {
                          notifier.updateIsArrowAgreePrivateCollectionAndUse(
                              isCheck: !state
                                  .value!.isArrowAgreePrivateCollectionAndUse);
                        },
                      )
                    ],
                  )),
              state.value!.isArrowAgreePrivateCollectionAndUse
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
                                  textStyle: SCTextStyle.font_12px_w600_h100))),
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
                        final checkAgrreResult = notifier.isCheckAgree();
                        if (checkAgrreResult != null) {
                          toastPopup(context, checkAgrreResult);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget twoPage(BuildContext context, WidgetRef ref, Size screenSize) {
    final route = ref.read(goRouterProvider);
    final state = ref.watch(registerPageProvider); //열어둬야함...
    final notifier = ref.read(registerPageProvider.notifier);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        // primary: true, // IOS 스크롤 최상단으로 보내는 옵션
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height,
              width: screenSize.width,
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
                              controller: SCTextInputController(),
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                notifier.setter(name: value);
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
                              placeHolder: "이메일을 입력해주세요",
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                notifier.setter(email: value);
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
                              needSecure: true,
                              placeHolder: "영문, 숫자, 특수문자 중 2가지 이상 조합하여 8~16자리",
                              focusNode: FocusNode(),
                              onFocusOffCallback: (value) {
                                notifier.setter(password: value);
                              },
                              onChanged: (value) {
                                print(value);
                                print(state.value!.registerInfo.password);
                                print(
                                    state.value!.registerInfo.passwordValidate);
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
                                needSecure: true,
                                placeHolder: "비밀번호를 다시 한번 입력해 주세요",
                                focusNode: FocusNode(),
                                onFocusOffCallback: (value) {
                                  notifier.setter(passwordValidate: value);
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
                                    controller: SCTextInputController(),
                                    focusNode: FocusNode(),
                                    onFocusOffCallback: (value) {},
                                    topLabel: '학교',
                                    initValue:
                                        state.value!.registerInfo.school?.name,
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
                                  notifier.updateIsPage(isCheck: true);
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SCButton.rectangle_primary(
                                  title: '가입하기',
                                  width: screenSize.width / 4 - 5,
                                  onPressed: () async {
                                    final validationResult =
                                        notifier.validationCheck();
                                    if (validationResult == null) {
                                      //통과
                                      final isSuccess = await notifier.signUp();
                                      if (isSuccess) {
                                        toastPopup(context, '가입이 완료되었습니다.');
                                        route.go(RouterPath.login.path);
                                      } else {
                                        //로그인 실패
                                      }
                                    } else {
                                      //실패
                                      toastPopup(context, validationResult);
                                    }
                                  }),
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }

  void toastPopup(context, validationResult) {
    showTopSnackBar(
      Overlay.of(context),
      SizedBox(
        height: 65,
        child: CustomSnackBar.info(
          message: validationResult,
          textStyle: SCTextStyle.font_14px_w400_h100.value.copyWith(
            color: SCColors.color_grey_00,
          ),
          borderRadius: BorderRadius.zero,
          backgroundColor: SCColors.color_grey_85,
        ),
      ),
      displayDuration: const Duration(seconds: 1),
    );
  }
}
