import 'package:flutter_application_1/model/school_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required RegisterInfo registerInfo,
    required bool isCheckAgreeAll, // 전체 동의
    required bool isCheckAgreeTermOfUse, // 이용약관 동의(필수)
    required bool isCheckAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의(필수)
    required bool isArrowAgreeTermOfUse, // 이용약관 동의 내용
    required bool isArrowAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의 내용
    required bool isPage, // true : 1페이지 / false : 2페이지
  }) = _RegisterData;
}

@freezed
class RegisterInfo with _$RegisterInfo {
  const factory RegisterInfo({
    String? name,
    String? email,
    String? password,
    String? passwordValidate, // 비밀번호 확인용 변수
    SchoolInfo? school,
  }) = _RegisterInfo;
}
