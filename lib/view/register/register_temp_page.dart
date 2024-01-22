import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/text_input/text_input.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/view/register/register_temp_page_view_model.dart';
import 'package:flutter_application_1/widget/dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterTempPage extends ConsumerWidget {
  const RegisterTempPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);

    final state = ref.watch(registerTempPageProvider);

    final notifier = ref.read(registerTempPageProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입 임시 페이지'),
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
                      // topLabel: '아이디',
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  SCButton.rectangle_secondary(
                    width: 104,
                    title: '학교 찾기',
                    onPressed: () async {
                      final result = await SCDialog.singleDialog<bool>(
                        context: context,
                        size: SCDialogSize.medium,
                        title: '학교 찾기',
                        // dismissible: false,
                        height: 700,
                        childBuilder: (popDialog) {
                          return Container(
                            decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              children: [
                                const Text('학교 찾기'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: SCTextInput(
                                        state: SCTextInputState.enabled,
                                        textInputAction: TextInputAction.next,
                                        controller: SCTextInputController(),
                                        focusNode: FocusNode(),
                                        showFlush: true,
                                        onFocusOffCallback: (value) {
                                          print('받아온 $value');
                                        },
                                      ),
                                    ),
                                    SCButton.capsule_primary(
                                      title: 'close',
                                      onPressed: () {
                                        popDialog(false);
                                      },
                                    ),
                                    SCButton.capsule_primary(
                                      title: 'save',
                                      onPressed: () {
                                        popDialog(true);
                                      },
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    notifier.getSchoolInfo(
                                        searchSchoolNm: '초등');
                                  },
                                  child: const Text('학교 찾기'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                      if (result == true) {
//
                      } else {
                        //
                      }
                    },
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
