import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

enum SCTextInputState {
  enabled,
  error,
  disabled,
}

class SCTextInputController extends TextEditingController {}

class SCTextInput extends StatefulWidget {
  SCTextInput({
    super.key,
    required this.controller,
    required SCTextInputState state,
    this.topLabel,
    this.showFlush = false,
    this.needSecure = false,
    this.placeHolder,
    this.initValue,
    this.keyboardType = TextInputType.text,
    TextInputAction? textInputAction,
    FocusNode? focusNode,
    this.onFocusOffCallback,

    // List<TextInputFormatter>? customInputFormatters, //필요시 추가(formatter)
  })  : assert(
          onFocusOffCallback != null ? focusNode != null : true,
          'onFocusOffCallback을 사용할시, focusNode가 반드시 있어야함.',
        ),
        _state = state,
        focusNode = focusNode ?? FocusNode(),
        _field = TextField(
          controller: controller,
          style: SCTextStyle.font_14px_w400_h100.value,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 15),
            hintText: placeHolder,
            hintStyle: SCTextStyle.font_14px_w400_h100.value.copyWith(
              color: SCColors.color_grey_50,
            ),
            border: InputBorder.none,
          ),
          enabled: state != SCTextInputState.disabled,
          obscureText: needSecure,
          textAlignVertical: TextAlignVertical.center,
          textInputAction: textInputAction,
          keyboardType: keyboardType, //기본 = text
          focusNode: focusNode,
          // autofocus //필요시 추가
          // formatter //필요시 추가
        );

  /// 실제 텍스트필드
  final TextField _field;

  ///(필수) 컨트롤러
  final SCTextInputController? controller;

  /// 텍스트필드 상태
  final SCTextInputState _state;

  /// 텍스트필드 라벨
  final String? topLabel;

  /// 텍스트필드 value 리셋버튼 여부
  final bool showFlush;

  /// 비밀번호 텍스트 여부
  final bool needSecure;

  /// placeholder
  final String? placeHolder;

  /// 텍스트필드 초깃값
  final String? initValue;

  /// 키보드 타입
  final TextInputType keyboardType;

  /// focusNode
  final FocusNode focusNode;

  /// textfield에서 focus가 빠졌을때 실행될 콜백
  final void Function(String)? onFocusOffCallback;

  @override
  State<SCTextInput> createState() => _SCTextInputState();
}

class _SCTextInputState extends State<SCTextInput> {
  SCTextInputState _state = SCTextInputState.disabled;
  late final SCTextInputController? _controller;
  late final TextField _textField;
  late final FocusNode? _focusNode;
  void Function(String)? _onFocusOffCallback;

  _SCTextInputState();

  @override
  void initState() {
    super.initState();
    //초기세팅

    //1. 텍스트필드 상태
    _state = widget._state;

    //2. 컨트롤러
    _controller = widget.controller;

    //3. 텍스트필드
    _textField = widget._field;

    //4. 포커스노드
    _focusNode = widget.focusNode;

    //5. 포커스콜백
    _onFocusOffCallback = widget.onFocusOffCallback;

    //disabled가 아닐떄, textfield에 초기값 넣어줘야함.
    if (_state != SCTextInputState.disabled && widget.initValue != null) {
      _controller!.text = widget.initValue!;
    }

    _focusNode?.addListener(() {
      //#조건
      //1. 포커스가 아웃되었을때
      //2. 포커스 콜백 있을때
      if (!(_focusNode?.hasFocus ?? true) && (_onFocusOffCallback != null)) {
        _onFocusOffCallback!(_controller?.text ?? '');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ///cursor 맨뒤에 위치하도록
    _controller?.selection = TextSelection.fromPosition(
      TextPosition(
        offset: _controller?.text.length ?? 0,
      ),
    );

    _state = widget._state;

    return SizedBox(
      height: widget.topLabel != null ? 64 : 48,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //top-label
          if (widget.topLabel != null)
            SCText(
              widget.topLabel!,
              textStyle: SCTextStyle.font_12px_w600_h100,
            ),
          if (widget.topLabel != null) const SizedBox(height: 4),
          //text_input
          Container(
            height: 47,
            decoration: BoxDecoration(
              color: _state == SCTextInputState.disabled
                  ? SCColors.color_grey_50
                  : SCColors.color_grey_00,
              border: Border.all(color: SCColors.color_grey_20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: widget._state == SCTextInputState.disabled
                      ? SCText(
                          widget.initValue ?? '',
                          textStyle: SCTextStyle.font_14px_w400_h100,
                          color: SCColors.color_grey_50,
                        )
                      : _textField,
                ),
                //텍스트필드 초기화 버튼 필요시,
                if (_state != SCTextInputState.disabled && widget.showFlush)
                  GestureDetector(
                    onTap: () => _controller?.clear(),
                    child: Assets.lib.assets.icons.close.svg(),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
