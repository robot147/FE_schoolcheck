import 'package:flutter/material.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';

void main() async {
  init();
  runApp(
    const ProviderScope(
      // observers: [ProviderLogger()],
      child: MyApp(),
    ),
  );
}

/// 앱 실행전 초기화
void init() async {
  WidgetsFlutterBinding.ensureInitialized();

  //가로화면 고정
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  //firebase 연동 코드 (필요시)
  await HTTPConnector.init();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //전체화면 설정
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    //전역 라우팅
    final goRoute = ref.watch(goRouterProvider);

    //(필요시) -> 토큰없으면 로그인 페이지로 보내기 추가 가능

    return MaterialApp.router(
      routerConfig: goRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
