import 'package:freezed_annotation/freezed_annotation.dart';
part 'member_data.freezed.dart';

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    required Member memberInfo,
  }) = _MemberData;
}

@freezed
class Member with _$Member {
  const factory Member({
    required String name,
    required int age,
  }) = _Member;
}
