import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/common/my_will_pop_scope.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../router/router.dart';

class DefaultLayout extends ConsumerWidget {
  final Widget child;

  const DefaultLayout({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyWillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: child,
      ),
    );
  }
}
