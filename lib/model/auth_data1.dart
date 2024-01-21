import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_data1.freezed.dart';

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    required Auth authInfo,
  }) = _AuthData;
}

@freezed
class Auth with _$Auth {
  const factory Auth({
    String? id,
    String? password,
    String? refreshToken,
    String? accessToken,
  }) = _Auth;
}
