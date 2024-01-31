import 'package:flutter_application_1/model/register_data.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/repository/register_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_page_view_model.g.dart';

@riverpod
class RegisterPage extends _$RegisterPage {
  @override
  RegisterData build() {
    //STATE 반환
    return RegisterData(
      registerInfo: RegisterInfo(name: null, email: null, password: null),
    );
  }

  void setter({
    String? name,
    String? email,
    String? password,
    String? passwordValidate,
  }) {
    state = state.copyWith(
      registerInfo: state.registerInfo.copyWith(
        name: name ?? state.registerInfo.name,
        email: email ?? state.registerInfo.email,
        password: password ?? state.registerInfo.password,
        passwordValidate:
            passwordValidate ?? state.registerInfo.passwordValidate,
      ),
    );
  }

  // 모달에서 학교 선택시 학교 설정하는 함수
  Future<void> setUserSchool({required SchoolInfo data}) async {
    state = state.copyWith(
      registerInfo: state.registerInfo.copyWith(school: data),
    );
  }

  // 밸리데이션 체크 함수
  String? passwordValidation() {
    if (state.registerInfo.name == null || state.registerInfo.name == '') {
      return '이름을 다시 확인해주세요.';
    } else if (state.registerInfo.email == null ||
        state.registerInfo.email == '') {
      return '이메일을 다시 확인해주세요.';
    } else if (state.registerInfo.password == null ||
        state.registerInfo.password == '') {
      return '비밀번호를 다시 확인해주세요.';
    } else if (state.registerInfo.password !=
        state.registerInfo.passwordValidate) {
      return '비밀번호가 일치하지 않습니다.';
    } else if (state.registerInfo.school == null) {
      return '학교 정보를 등록해주세요';
    } else {
      return null;
    }
  }

  // 이메일 중복 체크
  Future<String?> emailExistCheck() async {
    // signUpRepository에서 해당 이메일 체크 로직 실행
  }

  // 회원가입 함수
  Future<bool> signUp() async {
    // signUpRepository에서 회원가입 API 진행
    final name = state.registerInfo.name!;
    final email = state.registerInfo.email!;
    final password = state.registerInfo.password!;
    final schoolId =
        state.registerInfo.school != null ? state.registerInfo.school!.id : 0;

    return await RegisterRepository().signUp(body: {
      'email': email,
      'name': name,
      'password': password,
      'schoolId': schoolId.toString(),
    });
  }
}
