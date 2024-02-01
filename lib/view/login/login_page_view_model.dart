import 'package:flutter_application_1/model/auth_data.dart';
import 'package:flutter_application_1/model/login_data.dart';
import 'package:flutter_application_1/repository/login_repository.dart';
import 'package:flutter_application_1/secure_storage/secure_storage.dart';
import 'package:flutter_application_1/swagger_model/auth_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_view_model.g.dart';

@riverpod
class LoginPage extends _$LoginPage {
  @override
  LoginData build() {
    return const LoginData(email: null, pw: null);
  }

  void setter({
    String? email,
    String? pw,
  }) {
    state = state.copyWith(email: email ?? state.email, pw: pw ?? state.pw);
  }

  String? validationCheck() {
    if (state.email == null || state.email == '') {
      return '이메일을 다시 확인해주세요.';
    } else if (state.pw == null || state.pw == '') {
      return '비밀번호를 다시 확인해주세요.';
    } else {
      return null;
    }
  }

  Future<String> postLogin() async {
    try {
      final loginData = await LoginRepository()
          .signIn(body: {'email': state.email!, 'password': state.pw!});

      final refreshToken = loginData['refreshToken'];
      final accessToken = loginData['accessToken'];

      final storage = ref.read(secureStorageProvider);

      storage.write(key: 'REFRESH_TOKEN', value: refreshToken);

      storage.write(key: 'ACCESS_TOKEN', value: accessToken);

      return '성공';
    } catch (e) {
      print(e);
    }
    return '알 수 없는 이유로 로그인에 실패했습니다. 관리자에게 문의해주세요.';
  }
}
