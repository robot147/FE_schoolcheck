import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';

class SCTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool? obscureText;
  final bool? autofocus;
  final String? lableText;
  final ValueChanged<String>? onChanged;
  final Icon? suffixIcon;

  const SCTextFormField({
    required this.onChanged,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.autofocus = false,
    this.lableText,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: SCColors.input_border_color,
        width: 1.0,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: SCColors.$color_brand,
        obscureText: obscureText!,
        autofocus: autofocus!,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          errorText: errorText,
          hintStyle: TextStyle(
            color: SCColors.color_brand,
            fontSize: 14.0,
          ),
          labelText: lableText,
          // label: Text('test'),
          filled: true,
          fillColor: SCColors.color_brand,
          border: baseBorder,
          enabledBorder: baseBorder,
          focusedBorder: baseBorder.copyWith(
            borderSide: baseBorder.borderSide.copyWith(
              color: SCColors.$color_brand,
            ),
          ),
        ),
      ),
    );
  }
}
