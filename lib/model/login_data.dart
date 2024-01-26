import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_data.freezed.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    required String? email,
    required String? pw,
  }) = _LoginData;
}
