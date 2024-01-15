import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashPage extends ConsumerWidget {
  SplashPage({super.key});

  final storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    //TODO 로그인 토큰 여부로 화면 분기처리

    Future.delayed(const Duration(seconds: 2)).then((_) {
      route.go(RouterPath.login.path);
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.pinkAccent[200],
      body: Stack(children: const [
        Positioned.fill(
          child: Center(
            child: Text('SPLASH'),
          ),
        ),
      ]),
    );
  }
}
