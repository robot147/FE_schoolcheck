import 'package:flutter_application_1/model/register_data.dart';
import 'package:flutter_application_1/repository/register_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_page_view_model.g.dart';

@riverpod
class RegisterPage extends _$RegisterPage {
  @override
  RegisterData build() {
    return const RegisterData(
        registerInfo: Register(
            name: '',
            email: '',
            password: '',
            passwordCheck: '',
            schoolName: ''));
  }

  void setter({
    String? name,
    String? email,
    String? password,
    String? passwordCheck,
    String? schoolName,
  }) {
    state = state.copyWith(
        registerInfo: Register(
            name: name ?? state.registerInfo.name,
            email: email ?? state.registerInfo.email,
            password: password ?? state.registerInfo.password,
            passwordCheck: passwordCheck ?? state.registerInfo.passwordCheck,
            schoolName: schoolName ?? state.registerInfo.schoolName));
  }

  String? validationCheck() {
    if (state.registerInfo.name == '') {
      return '이름을 입력해주세요.';
    } else if (state.registerInfo.email == '') {
      return '이메일을 입력해주세요.';
    } else if (state.registerInfo.password == '') {
      return '비밀번호를 입력해주세요.';
    } else if (state.registerInfo.passwordCheck == '') {
      return '비밀번호 확인을 입력해주세요.';
    } else if (state.registerInfo.schoolName == '') {
      return '학교이름을 입력해주세요.';
    } else if (state.registerInfo.password !=
        state.registerInfo.passwordCheck) {
      return '비밀번호가 일치하지 않습니다.';
    } else {
      return null;
    }
  }

  Future<bool> postLogin() async {
    return await RegisterRepository().signUp(
      body: {
        'name': state.registerInfo.name,
        'email': state.registerInfo.email,
        'password': state.registerInfo.password,
        'schoolName': state.registerInfo.schoolName
      },
    );
  }
}
