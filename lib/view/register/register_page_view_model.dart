import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/model/user_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_page_view_model.g.dart';

@riverpod
class RegisterPage extends _$RegisterPage {
  @override
  Future<RegisterUserData> build() async {
    //STATE 반환
    return RegisterUserData(
      registerUserInfo: RegisterUser(
        isCheckAgreeAll: false,
        isArrowAgreeTermOfUse: false,
        isCheckAgreePrivateCollectionAndUse: false,
        isCheckAgreeTermOfUse: true,
        isArrowAgreePrivateCollectionAndUse: false,
      ),
    );
  }

  Future<void> setUserSchool({required SchoolInfo data}) async {
    print('setUserSchool Called');
    update(
      (state) => state.copyWith(
          registerUserInfo:
              state.registerUserInfo.copyWith(school: data.schoolName)),
    );
  }

  void setName(String name) {
    update(
      (state) => state.copyWith(
        registerUserInfo: state.registerUserInfo.copyWith(name: name),
      ),
    );
  }

  void setEmail(String email) {
    update(
      (state) => state.copyWith(
        registerUserInfo: state.registerUserInfo.copyWith(email: email),
      ),
    );
  }

  void setPassword(String password) {
    update(
      (state) => state.copyWith(
        registerUserInfo: state.registerUserInfo.copyWith(password: password),
      ),
    );
  }

  void setPasswordValidate(String passwordValidate) {
    update(
      (state) => state.copyWith(
        registerUserInfo:
            state.registerUserInfo.copyWith(passwordValidate: passwordValidate),
      ),
    );
  }

  Future<void> signUp() async {
    // signUpRepository에서 회원가입 API 진행
  }
}
