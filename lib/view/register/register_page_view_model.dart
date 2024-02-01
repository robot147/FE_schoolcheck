import 'package:flutter_application_1/model/register_data.dart';
import 'package:flutter_application_1/repository/register_repository.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_page_view_model.g.dart';

@riverpod
class RegisterPage extends _$RegisterPage {
  @override
  Future<RegisterData?> build() async {
    return const RegisterData(
        isCheckAgreeAll: false,
        isCheckAgreeTermOfUse: false,
        isCheckAgreePrivateCollectionAndUse: false,
        isArrowAgreeTermOfUse: true,
        isArrowAgreePrivateCollectionAndUse: false,
        isPage: true,
        registerInfo: RegisterInfo(
            name: '',
            email: '',
            password: '',
            passwordValidate: '',
            school: SchoolInfo()));
  }

  // 전체 동의
  void updateIsCheckAgreeAll({required bool isCheck}) {
    update(
      (state) => state?.copyWith(
          isCheckAgreeAll: isCheck,
          isCheckAgreeTermOfUse: isCheck,
          isCheckAgreePrivateCollectionAndUse: isCheck),
    );
  }

  // 이용약관 동의(필수)
  void updateIsCheckAgreeTermOfUse({required bool isCheck}) {
    if (state.value!.isCheckAgreePrivateCollectionAndUse && isCheck) {
      updateIsCheckAgreeAll(isCheck: true);
    } else if (isCheck) {
      update(
        (state) => state?.copyWith(
          isCheckAgreeTermOfUse: isCheck,
        ),
      );
    } else {
      update(
        (state) => state?.copyWith(
          isCheckAgreeAll: isCheck,
          isCheckAgreeTermOfUse: isCheck,
        ),
      );
    }
  }

  // 개인정보 수집 및 이용 동의(필수)
  void updateIsCheckAgreePrivateCollectionAndUse({required bool isCheck}) {
    if (state.value!.isCheckAgreeTermOfUse && isCheck) {
      updateIsCheckAgreeAll(isCheck: true);
    } else if (isCheck) {
      update(
        (state) => state?.copyWith(
          isCheckAgreePrivateCollectionAndUse: isCheck,
        ),
      );
    } else {
      update(
        (state) => state?.copyWith(
          isCheckAgreeAll: isCheck,
          isCheckAgreePrivateCollectionAndUse: isCheck,
        ),
      );
    }
  }

  // 이용약관 동의 내용
  void updateIsArrowAgreeTermOfUse({required bool isCheck}) {
    update(
      (state) => state?.copyWith(
        isArrowAgreeTermOfUse: isCheck,
      ),
    );
  }

  // 개인정보 수집 및 이용 동의 내용
  void updateIsArrowAgreePrivateCollectionAndUse({required bool isCheck}) {
    update(
      (state) => state?.copyWith(
        isArrowAgreePrivateCollectionAndUse: isCheck,
      ),
    );
  }

  // 페이지 전환
  void updateIsPage({required bool isCheck}) {
    update(
      (state) => state?.copyWith(
        isPage: isCheck,
      ),
    );
  }

  void setter({
    String? name,
    String? email,
    String? password,
    String? passwordValidate,
    SchoolInfo? school,
  }) {
    update((state) => state?.copyWith(
            registerInfo: RegisterInfo(
          name: name ?? state.registerInfo.name,
          email: email ?? state.registerInfo.email,
          password: password ?? state.registerInfo.password,
          passwordValidate:
              passwordValidate ?? state.registerInfo.passwordValidate,
          school: school ?? state.registerInfo.school,
        )));
  }

  // 모달에서 학교 선택시 학교 설정하는 함수
  Future<void> setUserSchool({required SchoolInfo data}) async {
    update((state) => state?.copyWith(
          registerInfo: state.registerInfo.copyWith(school: data),
        ));
  }

  // 밸리데이션 체크 함수
  String? validationCheck() {
    if (state.value!.registerInfo.name == '') {
      return '이름을 입력해주세요.';
    } else if (state.value!.registerInfo.email == '') {
      return '이메일을 입력해주세요.';
    } else if (state.value!.registerInfo.password == '') {
      return '비밀번호를 입력해주세요.';
    } else if (state.value!.registerInfo.passwordValidate == '') {
      return '비밀번호 확인을 입력해주세요.';
    } else if (state.value!.registerInfo.school == null) {
      return '학교 정보를 등록해주세요';
    } else if (state.value!.registerInfo.password !=
        state.value!.registerInfo.passwordValidate) {
      return '비밀번호가 일치하지 않습니다.';
    } else {
      return null;
    }
  }

  // 체크 여부 확인
  String? isCheckAgree() {
    if (state.value!.isCheckAgreeTermOfUse &&
        state.value!.isCheckAgreePrivateCollectionAndUse) {
      updateIsPage(isCheck: false);
      return null;
    } else {
      return '필수 이용약관에 모두 동의해야 가입할 수 있어요.';
    }
  }

  // 이메일 중복 체크
  Future<String?> emailExistCheck() async {
    return null;
    // signUpRepository에서 해당 이메일 체크 로직 실행
  }

  // 회원가입 함수
  Future<bool> signUp() async {
    // signUpRepository에서 회원가입 API 진행
    final name = state.value!.registerInfo.name!;
    final email = state.value!.registerInfo.email!;
    final password = state.value!.registerInfo.password!;
    final schoolId = state.value!.registerInfo.school != null
        ? state.value!.registerInfo.school!.id
        : 0;

    return await RegisterRepository().signUp(body: {
      'email': email,
      'name': name,
      'password': password,
      'schoolId': schoolId,
    });
  }
}
