import 'package:flutter/material.dart';

class WillPopScope extends StatelessWidget {
  final Widget child;
  final VoidCallback? onWillPop;

  const WillPopScope({super.key, required this.child, this.onWillPop});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: child,
    );
  }
}
