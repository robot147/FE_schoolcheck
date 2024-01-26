import 'package:freezed_annotation/freezed_annotation.dart';
part 'management_data.freezed.dart';

abstract class ManagementData {}

// 데이터가 비어있을 때의 표현 클래스
class EmptyManagementData extends ManagementData {}

// 학반 관리 데이터
@freezed
class ClassManagementData extends ManagementData with _$ClassManagementData {
  const factory ClassManagementData({
    required ClassManagement classManagementInfo,
  }) = _ClassManagementData;
}

@freezed
class ClassManagement with _$ClassManagement {
  const factory ClassManagement({
    String? id,
    String? password,
    String? refreshToken,
    String? accessToken,
  }) = _ClassManagement;
}

// 스케쥴 관리 데이터
@freezed
class ScheduleManagementData extends ManagementData
    with _$ScheduleManagementData {
  const factory ScheduleManagementData({
    required ScheduleManagement scheduleManagementInfo,
  }) = _ScheduleManagementData;
}

@freezed
class ScheduleManagement with _$ScheduleManagement {
  const factory ScheduleManagement({
    String? id,
    String? password,
    String? refreshToken,
    String? accessToken,
  }) = _ScheduleManagement;
}
