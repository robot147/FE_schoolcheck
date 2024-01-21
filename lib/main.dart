import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'networks/http_connector.dart';

void main() async {
  init();
  runApp(const ProviderScope(child: MyApp()));
}

/// 앱 실행전 초기화
void init() async {
  WidgetsFlutterBinding.ensureInitialized();
  //firebase 연동 코드
  await HTTPConnector.init();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRoute = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
