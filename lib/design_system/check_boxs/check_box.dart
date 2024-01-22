import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/color/color.dart';

class SCCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool?) onChanged;

  SCCheckBox({required this.value, required this.onChanged});

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<SCCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}
