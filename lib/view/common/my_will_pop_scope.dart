import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyWillPopScope extends StatelessWidget {
  final Widget child;
  final VoidCallback? onWillPop;

  const MyWillPopScope({
    required this.child,
    this.onWillPop,
  });

  @override
  Widget build(BuildContext context) {
    DateTime? _lastPressedTime;
    return WillPopScope(
        onWillPop: () async {
          if (_lastPressedTime == null ||
              DateTime.now().difference(_lastPressedTime!) >
                  Duration(seconds: 1)) {
            // 첫 번째 누름
            _lastPressedTime = DateTime.now();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('앱을 종료하시겠습니까?'),
                duration: Duration(seconds: 1),
              ),
            );
            return false; // 앱 종료를 막음
          } else {
            // 두 번째 누름
            return true; // 앱 종료
          }
        },
        child: child);
  }
}
