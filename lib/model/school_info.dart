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
    String? totalCount,
    String? schoolName,
    String? schoolGubun,
    String? schoolType,
    String? estType,
    String? region,
    String? link,
  }) = _SchoolInfo;
}
