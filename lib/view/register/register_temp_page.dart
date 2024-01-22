import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/view/register/register_temp_page_view_model.dart';
import 'package:flutter_application_1/widget/dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterTempPage extends ConsumerWidget {
  RegisterTempPage({super.key});
  SCTextInputController nowSchoolNm = SCTextInputController();
  SCTextInputController searchSchoolNm = SCTextInputController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);

    final state = ref.watch(registerTempPageProvider);

    final notifier = ref.read(registerTempPageProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입 임시 페이지'),
      ),
      body: state.when(
        data: (data) {
          return Column(
            children: [
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 246,
                    child: SCTextInput(
                      state: SCTextInputState.disabled,
                      textInputAction: TextInputAction.next,
                      controller: SCTextInputController(),
                      focusNode: FocusNode(),
                      onFocusOffCallback: (value) {
                        print('받아온 $value');
                      },
                      topLabel: '학교 정보',
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      const SizedBox(height: 15),
                      SCButton.rectangle_secondary(
                        width: 104,
                        title: '학교 찾기',
                        onPressed: () async {
                          await SCDialog.singleDialog(
                            context: context,
                            size: SCDialogSize.medium,
                            title: '학교 찾기',
                            height: 593,
                            childBuilder: (popDialog) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 30, 20, 19),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SCText(
                                      '학교 찾기',
                                      textStyle:
                                          SCTextStyle.font_20px_w700_h100,
                                    ),
                                    const SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 550,
                                          child: SCTextInput(
                                            state: SCTextInputState.enabled,
                                            textInputAction:
                                                TextInputAction.next,
                                            controller: searchSchoolNm,
                                            focusNode: FocusNode(),
                                            showFlush: true,
                                            onFocusOffCallback: (value) {
                                              print('받아온 $value');
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 14.0),
                                        SCButton.rectangle_secondary(
                                          width: 104,
                                          title: '학교 찾기',
                                          onPressed: () async {
                                            notifier.getSchoolInfo(
                                                searchSchoolNm:
                                                    searchSchoolNm.text);
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
                                                      textStyle: SCTextStyle
                                                          .font_14px_w400_h100,
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
                                                      textStyle: SCTextStyle
                                                          .font_14px_w400_h100,
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
                                                  for (SchoolInfoData i
                                                      in data!)
                                                    searchedSchoolWidget(i),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    SCButton.rectangle_primary(
                                      width: 104,
                                      title: '닫기',
                                      onPressed: () async {},
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        error: (error, stackTrace) => Text('error $error'),
        loading: () => const Text('로딩'),
      ),
    );
  }
}

// 해당 위젯 전용 뷰모델을 따로 만든다? 고민해보기
class SearchedSchoolWidget extends ConsumerWidget {
  final SchoolInfoData data;
  SearchedSchoolWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerTempPageProvider);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.7,
        ),
      ),
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
                  data.schoolInfo.schoolName.toString(),
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 뷰모델의 값이 바뀔 때마다 새로고침이 되도록 수정해야됨. 어떻게? ConsumerWidget으로 바꾼다?
Widget searchedSchoolWidget(SchoolInfoData data) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.7,
      ),
    ),
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
  );
}
