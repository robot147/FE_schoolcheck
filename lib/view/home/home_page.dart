import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
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
        appBar: AppBar(
          title: const Text('홈'),
          leading: SCButton.capsule_primary(
            title: '로그인으로',
            onPressed: () {
              route.pushNamed(RouterPath.login.name);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //TO-USE (assets 사용)
            Assets.lib.assets.icons.iconAdd.svg(width: 50, height: 50),
            Assets.lib.assets.lottie.lot.lottie(width: 200, height: 200),

            Assets.lib.assets.icons.pie.image(width: 70, height: 70),
            Assets.lib.assets.images.pencil.image(height: 150),

            Center(
              child: ElevatedButton(
                  onPressed: () {
                    route.pushNamed(RouterPath.memberPage.name,
                        pathParameters: {'memberId': '1'});
                  },
                  child: const Text('회원 페이지')),
            ),
          ],
        ));
  }
}
