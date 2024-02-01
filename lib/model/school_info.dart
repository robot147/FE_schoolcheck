import 'package:freezed_annotation/freezed_annotation.dart';
part 'school_info.freezed.dart';

@freezed
class SchoolInfoData with _$SchoolInfoData {
  const factory SchoolInfoData({
    required List<SchoolInfo> schoolInfo,
    String? searchName,
  }) = _SchoolInfoData;
}

@freezed
class SchoolInfo with _$SchoolInfo {
  const factory SchoolInfo({
    int? id,
    String? name, // 학교 이름
    String? address, // 주소
    bool? isSelected,
  }) = _SchoolInfo;
}
