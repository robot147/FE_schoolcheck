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
    required String title,
    required String body,
  }) = _Member;
}

@freezed
class SignupData with _$SignupData {
  const factory SignupData({
     String? email,
     String? pwd,
  }) = _SignupData;
}
