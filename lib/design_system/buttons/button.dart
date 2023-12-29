// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

enum ButtonSize {
  large,
  small,
}

enum ButtonState {
  enabled,
  disabled,
  pressed,
}

class ButtonStyle {
  final BorderRadius radius;

  final Color enabledColor;
  final Color enabledTextColor;
  final Gradient? enabledGradientColor;

  final Color? pressedColor;
  final Color? pressedTextColor;

  final Color? disabledColor;
  final Color? disabledTextColor;

  final Color? borderColor;
  final Color? disabledBorderColor;

  final SCTextStyle? smallFont;
  final List<BoxShadow>? shadowList;

  ButtonStyle({
    required this.radius,
    required this.enabledColor,
    required this.enabledTextColor,
    this.enabledGradientColor,
    this.pressedColor,
    this.pressedTextColor,
    this.disabledColor,
    this.disabledTextColor,
    this.borderColor,
    this.disabledBorderColor,
    this.smallFont,
    this.shadowList,
  });
}

class SCButton extends StatefulWidget {
  final String title;
  final void Function() onPressed;
  final ButtonStyle style;
  final ButtonSize? size; //default: large
  final double? width; //120
  final bool disabled; //false

  //개발시, 직접 사용하는 부분
  factory SCButton.capsule_primary({
    Key? key,
    required String title,
    required void Function() onPressed,
    double? width,
    ButtonSize size = ButtonSize.large,
    bool disabled = false,
  }) {
    //버튼마다 미리 정의해둬야함.
    final style = ButtonStyle(
      enabledColor: SCColors.background,
      enabledTextColor: SCColors.background,
      enabledGradientColor: SCColors.button_gradient,
      radius: BorderRadius.circular(100),
    );

    return SCButton(
      key: key,
      style: style,
      title: title,
      onPressed: onPressed,
      width: width,
      size: size,
      disabled: disabled,
    );
  }

  ////////////////////////////////////////////
  ///여기에 디자인대로 버튼 하나씩 추가하면 됨////
  ///////////////////////////////////////////

  //버튼 틀
  const SCButton({
    super.key,
    required this.style,
    required this.title,
    required this.onPressed,
    required this.size,
    required this.width,
    required this.disabled,
  });

  @override
  State<SCButton> createState() => _SCButtonState();
}

class _SCButtonState extends State<SCButton> {
  //버튼 기본상태
  ButtonState buttonState = ButtonState.enabled;

  @override
  Widget build(BuildContext context) {
    if (widget.disabled) {
      buttonState = ButtonState.disabled;
    }

    return Container(
      width: widget.width ?? 120,
      height: widget.size == ButtonSize.large ? 44 : 30,
      decoration: BoxDecoration(
        border: makeBorder(),
        color: makeBgColor(),
        gradient: makeBgGradient(),
        borderRadius: widget.style.radius,
        boxShadow:
            buttonState != ButtonState.disabled ? widget.style.shadowList : [],
      ),
      child: InkWell(
        hoverColor: Colors.transparent,
        borderRadius: widget.style.radius,
        onTap: buttonState != ButtonState.disabled ? widget.onPressed : null,
        onTapDown: (_) {
          if (buttonState != ButtonState.disabled) {
            toggleBtnState(ButtonState.pressed);
          }
        },
        onTapUp: (_) {
          if (buttonState != ButtonState.disabled) {
            toggleBtnState(ButtonState.enabled);
          }
        },
        onTapCancel: () {
          if (buttonState != ButtonState.disabled) {
            toggleBtnState(ButtonState.enabled);
          }
        },
        child: Center(
          child: SCText(
            widget.title,
            textStyle: widget.size == ButtonSize.large
                ? SCTextStyle.font_400_13px_140pc_P
                : (widget.style.smallFont ?? SCTextStyle.font_400_12px_140pc_P),
            color: makeTextColor(),
          ),
        ),
      ),
    );
  }

  //버튼 UI 함수

  //버튼 background_color
  Color? makeBgColor() {
    switch (buttonState) {
      //1. enabled
      case ButtonState.enabled:
        if (widget.style.enabledGradientColor == null) {
          return widget.style.enabledColor;
        } else {
          //gradient_color로 사용
          return null;
        }

      //2. pressed
      case ButtonState.pressed:
        return widget.style.pressedColor;

      //3. disabled
      case ButtonState.disabled:
        return widget.style.disabledColor;
    }
  }

  //버튼 background_gradient
  Gradient? makeBgGradient() {
    if (buttonState == ButtonState.enabled &&
        widget.style.enabledGradientColor != null) {
      return widget.style.enabledGradientColor!;
    } else {
      return null;
    }
  }

  //버튼 border
  BoxBorder makeBorder() {
    switch (buttonState) {
      //1. enabled
      case ButtonState.enabled:
        if (widget.style.borderColor == null) {
          return Border.all(color: Colors.transparent);
        } else {
          return Border.all(color: widget.style.borderColor!);
        }

      //2. pressed
      case ButtonState.pressed:
        if (widget.style.borderColor == null) {
          return Border.all(color: Colors.transparent);
        } else {
          return Border.all(color: widget.style.borderColor!);
        }

      //3. disabled
      case ButtonState.disabled:
        if (widget.style.disabledBorderColor == null) {
          return Border.all(color: Colors.transparent);
        } else {
          return Border.all(color: widget.style.disabledBorderColor!);
        }
    }
  }

  //버튼 text_color
  Color makeTextColor() {
    switch (buttonState) {
      //1. enabled
      case ButtonState.enabled:
        return widget.style.enabledTextColor;

      //2. pressed
      case ButtonState.pressed:
        if (widget.style.pressedTextColor == null) {
          return widget.style.enabledTextColor;
        } else {
          return widget.style.pressedTextColor!;
        }

      //3. disabled
      case ButtonState.disabled:
        if (widget.style.disabledTextColor == null) {
          return SCColors.text_primary;
        } else {
          return widget.style.disabledTextColor!;
        }
    }
  }

  //버튼 토글
  void toggleBtnState(ButtonState state) {
    if (buttonState != ButtonState.disabled) {
      setState(() {
        buttonState = state;
      });
    }
  }
}
