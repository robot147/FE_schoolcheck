import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/auth_data.dart' as localAuth;
import 'package:flutter_application_1/repository/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

// 로그인 토큰을 관리하기 위한 프로바이더

final secureStorageProvider =
    Provider<FlutterSecureStorage>((ref) => FlutterSecureStorage());

// AuthData 클래스를 따로 만들어서 선언했는데, 이 작업이 필요한지 의문.
// 그냥 Flutter SecureStorage 기능으로 관리하는건 어떨지?
@riverpod
class Auth extends _$Auth {
  @override
  localAuth.AuthData build() {
    return localAuth.AuthData(auth: localAuth.Auth());
  }

  // 현재 refreshToken이 유효한지 검증
  Future<void> checkToken() async {
    final storage = ref.read(secureStorageProvider);

    final refreshToken = await storage.read(key: 'REFRESH_TOKEN');
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');

    print('now refreshToken is $refreshToken');
    print('now accessToken is $accessToken');

    final Map<String, String> accessTokenToParam = {
      'refreshToken': refreshToken ?? ''
    };
    try {
      // 현재 서버에서 param으로 refresh를 받기 때문에 param으로 보내줌.
      final resp = await AuthRepository().getRefreshToken(accessTokenToParam);

      print(resp);

      await storage.write(key: 'ACCESS_TOKEN', value: resp.data['accessToken']);

      // 해당 코드는 뷰단에서 처리
      //
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (_) => RootTab()), (route) => false);
    } catch (e) {
      // 해당 코드는 뷰단에서 처리
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (_) => LoginScreen()), (route) => false);
    }
  }
}
