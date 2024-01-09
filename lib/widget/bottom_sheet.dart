import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';

class SCBottomSheet<T> {
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required double height,
    required double width,
    required Widget Function(
      Function(T? result) popDialog,
    ) childBuilder,
  }) {
    return showModalBottomSheet<T>(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        constraints: const BoxConstraints(
          maxWidth: 600,
        ),
        builder: (context) {
          return Material(
            color: Colors.transparent,
            child: SizedBox(
              width: width,
              height: height,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: SCColors.color_brand,
                ),
                padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
                child: Column(
                  children: [
                    Container(
                      height: 28,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: SCColors.color_grey_99,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SCText(
                          title,
                          textStyle: SCTextStyle.font_16px_w600_h100,
                        ),
                      ),
                    ),
                    Expanded(
                      child: childBuilder(
                        (result) => Navigator.of(context).pop(result),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
