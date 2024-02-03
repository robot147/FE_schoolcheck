// 학교 검색 모달
import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/view/register/register_page_view_model.dart';
import 'package:flutter_application_1/view/register/register_search_school_modal_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterSearchSchoolModal extends ConsumerWidget {
  RegisterSearchSchoolModal({super.key});

  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerSearchSchoolModalProvider);

    final notifier = ref.read(registerSearchSchoolModalProvider.notifier);
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
                  child: SCTextInput(
                    state: SCTextInputState.enabled,
                    textInputAction: TextInputAction.next,
                    controller: SCTextInputController(),
                    focusNode: FocusNode(),
                    showFlush: true,
                    onFocusOffCallback: (value) {
                      notifier.setter(searchName: value);
                      print('받아온 $value');
                    },
                  ),
                ),
                const SizedBox(width: 14.0),
                SCButton.rectangle_secondary(
                  width: 104,
                  title: '학교 찾기',
                  onPressed: () async {
                    FocusScope.of(context).unfocus();
                    notifier.searchSchoolInfo();
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
                  SizedBox(
                    height: 250,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (SchoolInfo i in state.schoolInfo)
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
  }
}

// 검색된 학교 위젯
Widget searchedSchoolWidget(SchoolInfo data, WidgetRef ref) {
  final modalNotifier = ref.read(registerSearchSchoolModalProvider.notifier);
  final pageNotifier = ref.read(registerPageProvider.notifier);
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.7,
      ),
      // 선택된 항목 색깔 입히기
      color: data.isSelected == true ? Colors.blue : Colors.white,
    ),
    child: GestureDetector(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 48,
              child: Center(
                child: SCText(
                  data.name.toString(),
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              // color:
              //     Colors.orange,
              height: 48,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SCText(
                  data.address.toString(),
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () async {
        // 회원가입 페이지 학교 정보 수정
        print(data.isSelected);
        await pageNotifier.setUserSchool(data: data);
        // 학교 찾기 모달 선택된 학교 수정
        await modalNotifier.setSchoolChecked(data: data);
      },
    ),
  );
}
