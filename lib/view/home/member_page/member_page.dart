import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemberPage extends ConsumerWidget {
  final String memberId;
  const MemberPage({
    super.key,
    required this.memberId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('홈으로')),
        backgroundColor: Colors.amber,
        body: Column(
          children: const [Text('회원 페이지')],
        ));
  }
}
