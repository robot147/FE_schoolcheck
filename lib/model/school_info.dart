import 'package:freezed_annotation/freezed_annotation.dart';
part 'school_info.freezed.dart';

@freezed
class SchoolInfoData with _$SchoolInfoData {
  const factory SchoolInfoData({
    required SchoolInfo schoolInfo,
  }) = _SchoolInfoData;
}

@freezed
class SchoolInfo with _$SchoolInfo {
  const factory SchoolInfo({
    String? totalCount, // 데이터 총 갯수
    String? schoolName, // 학교 이름
    String? schoolGubun, // 학교 구분 (초,중,고 등)
    String? schoolType, // 학교 타입 (4년제, 전문대 등)
    String? estType, // 설립 유형 (사립,공립 등)
    String? region, // 지역
    String? link, // 학교 링크
  }) = _SchoolInfo;
}
