import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required Register registerInfo,
    // required bool isCheckAgreeAll, // 전체 동의
    // required bool isCheckAgreeTermOfUse, // 이용약관 동의(필수)
    // required bool isCheckAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의(필수)
    // required bool isArrowAgreeTermOfUse, // 이용약관 동의 내용
    // required bool isArrowAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의 내용
    // required bool isPage, // true : 1페이지 / false : 2페이지
  }) = _RegisterData;
}

@freezed
class Register with _$Register {
  const factory Register({
    required String name,
    required String email,
    required String password,
    required String passwordCheck,
    required String schoolName,
    required int schoolId,
  }) = _Register;
}
