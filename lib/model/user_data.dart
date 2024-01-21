import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required User userInfo,
  }) = _UserData;
}

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? password,
    String? refreshToken,
    String? accessToken,
  }) = _User;
}
