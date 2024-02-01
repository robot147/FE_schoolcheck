import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data.freezed.dart';

abstract class UserDataForm {}

@freezed
class UserData extends UserDataForm with _$UserData {
  const factory UserData({
    required User userInfo,
  }) = _UserData;
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? email,
    String? password,
    String? school,
  }) = _User;
}

@freezed
class RegisterUserData extends UserDataForm with _$RegisterUserData {
  const factory RegisterUserData({
    required RegisterUser registerUserInfo,
  }) = _RegisterUserData;
}

@freezed
class RegisterUser with _$RegisterUser {
  const factory RegisterUser({
    bool? isCheckAgreeAll, // 동의항목 (추가적으로 동의할 것 발생시 추가)
    bool? isCheckAgreeTermOfUse, // 이용약관 동의(필수)
    bool? isCheckAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의(필수)
    bool? isArrowAgreeTermOfUse, // 이용약관 동의 내용
    bool? isArrowAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의 내용
    String? name,
    String? email,
    String? password,
    String? passwordValidate, // 비밀번호 확인용 변수
    String? school,
    int? paginate,
  }) = _RegisterUser;
}
