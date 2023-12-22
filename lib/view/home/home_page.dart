import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: const Text('홈')),
        body: Column(
          children: [
            const Spacer(),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    route.pushNamed(RouterPath.memberPage.name,
                        pathParameters: {'memberId': '1'});
                  },
                  child: const Text('회원 페이지')),
            ),
            const Spacer(),
          ],
        ));
  }
}
