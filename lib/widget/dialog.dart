import 'dart:async';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

final DIALOG_NAVIGATION_KEY = GlobalKey();

//모달 사이즈
enum SCDialogSize {
  /// 680
  large,

  /// 400
  medium,

  /// 320
  small,
  ;

  const SCDialogSize();
  double get width {
    switch (this) {
      case SCDialogSize.large:
        return 680;
      case SCDialogSize.medium:
        return 400;
      case SCDialogSize.small:
        return 320;
    }
  }
}

class SCSubDialog<T> {
  final String path;
  final String title;
  final double height;
  final SCDialogSize size;
  // final T? callbackResult;

  /// popDialog는 모든 dialog를 닫고 결과 반환(T).
  /// push(path)는 path에 넣은 경로로 이동
  final Widget Function(
    Function(T? result) popDialog,
    Function(String path, Map<String, String>? param) push,
    Map<String, String>? params,
  ) childBuilder;

  SCSubDialog({
    required this.path,
    required this.title,
    required this.height,
    required this.size,
    required this.childBuilder,
    // this.callbackResult,
  });
}

//[종류]
//1. singleDialog (모달 1개만 열고 닫는경우)
//2. multiDialog (모달 2개이상 열고 닫는경우)
class SCDialog {
  //1. 모달 경로가 1개인 경우
  static Future<T?> singleDialog<T>({
    required BuildContext context, //부모위젯 context(모달 띄우는 페이지의 context)
    required SCDialogSize size,
    required String title,
    required double height,
    required Widget Function(
      Function(T? result) popDialog,
    ) childBuilder,
    bool dismissible = true,
  }) {
    return showDialog<T?>(
      context: context, //부모위젯 context
      barrierColor: Colors.transparent,
      barrierDismissible: dismissible, // false-> 바깥 터치해서 pop 불가
      builder: (modalContext) {
        //여기서 ctx는 띄워진 모달의 context임
        return _baseDialog(
          modalContext: modalContext,
          title: title,
          size: size,
          height: height,
          dismissible: dismissible,
          children:
              //모달에 넣을 내용
              childBuilder((result) => Navigator.of(modalContext).pop(result)),
        );
      },
    );
  }

  //2. 모달 경로가 2개이상 필요한 경우
  static Future<T?> navigatedDialog<T>({
    required BuildContext context, //부모위젯 context(모달 띄우는 페이지의 context)
    required List<SCSubDialog<T>> subDialog,
    String initialRoute = '/',
    bool dismissible = true,
  }) {
    assert(
      subDialog.firstWhereOrNull((element) => element.path == initialRoute) !=
          null,
      '최초 진입 경로(initialRoute)가 subpath 중에 있어야함',
    );
    return showDialog<T>(
      context: context, //부모위젯 context
      barrierColor: Colors.transparent,
      barrierDismissible: dismissible,
      builder: (modalContext) {
        return Navigator(
          key: DIALOG_NAVIGATION_KEY,
          initialRoute: initialRoute,
          //새로운 경로가 호출될때!
          onGenerateRoute: (RouteSettings settings) {
            //1. 호출된 URL 찾기
            final uri = Uri.parse(settings.name ?? '');
            //2. dialog리스트에서 해당 URL의 dialog찾기
            final goToDialog =
                subDialog.firstWhere((element) => element.path == uri.path);
            //3. 해당 dialog의 UI 그리기
            return PageRouteBuilder(
              //innerContext: 띄워진 모달 각 모달의 context
              pageBuilder: (innerContext, __, ___) => _baseDialog(
                modalContext: modalContext, //전체 모달들의 context
                size: goToDialog.size,
                height: goToDialog.height,
                title: goToDialog.title,
                dismissible: dismissible,
                children: goToDialog.childBuilder(
                  //1) popDialog: SCSubDialog<T> 의 (T result)를 반환하고 모달 닫기.
                  (result) => Navigator.of(modalContext).pop(result),
                  //2) push: SCSubDialog 리스트에서 다음 dialog로 push
                  (path, param) => Navigator.of(innerContext).pushNamed(
                    Uri(path: path, queryParameters: param).toString(),
                  ),
                  //3) push받을때 받아온 파라미터
                  //이전경로에서 현재경로로 push할때 (ex. 현재: '/' -> PUSH '/main/:id')
                  // :id 부분을 받아와서 사용 가능
                  uri.queryParameters, //Map형식으로 여러개 파라미터 존재가능
                ),
              ),
              transitionDuration: const Duration(milliseconds: 2),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            );
          },
        );
      },
    );
  }
}

//모달 기본 UI
Widget _baseDialog({
  required BuildContext modalContext,
  required String title,
  required SCDialogSize size,
  required double height,
  required bool dismissible,
  required Widget children,
}) {
  return WillPopScope(
    onWillPop: () => Future.value(false), //뒤로가기 금지
    child:
        //모달 뒷배경
        Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {
              //사용자가 모달 터치했을때, 키보드가 올라와있으면,
              if (MediaQuery.of(modalContext).viewInsets.bottom != 0) {
                //키보드 내리기
                FocusManager.instance.primaryFocus?.unfocus();
              } else {
                if (dismissible) {
                  //모달 바깥쪽 영역 터치시 -> 모달 닫기
                  Navigator.of(modalContext).pop();
                }
              }
            },
            //여기부터가 모달
            child: Container(
              height: MediaQuery.of(modalContext).size.height,
              width: MediaQuery.of(modalContext).size.width,
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: SizedBox(
                  width: size.width,
                  height: height,
                  child: GestureDetector(
                    onTap: () {},
                    child: Hero(
                      tag: 'DIALOG',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          color: SCColors.background,
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //1. 모달 제목
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1.5,
                                    color: SCColors.text_primary,
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: SCText(
                                  title,
                                  textStyle: SCTextStyle.font_600_18px_100pc_P,
                                  color: SCColors.text_primary,
                                ),
                              ),
                            ),
                            //2. 모달 찐 내용
                            Expanded(child: children),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
