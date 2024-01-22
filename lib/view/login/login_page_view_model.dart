import 'package:flutter_application_1/model/login_data.dart';
import 'package:flutter_application_1/repository/login_repository.dart';
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

  Future<bool> postLogin() async {
    return await LoginRepository().signIn(
      body: {'email': state.email!, 'pw': state.pw!},
    );
  }
}
