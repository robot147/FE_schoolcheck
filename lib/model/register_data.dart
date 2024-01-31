import 'package:flutter_application_1/model/school_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required RegisterInfo registerInfo,
    bool? isCheckAgreeAll, // 동의항목 (추가적으로 동의할 것 발생시 추가)
    bool? isCheckAgreeTermOfUse, // 이용약관 동의(필수)
    bool? isCheckAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의(필수)
    bool? isArrowAgreeTermOfUse, // 이용약관 동의 내용
    bool? isArrowAgreePrivateCollectionAndUse, // 개인정보 수집 및 이용 동의 내용
    int? paginate,
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
