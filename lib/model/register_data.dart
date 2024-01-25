import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required Register registerInfo,
  }) = _RegisterData;
}

@freezed
class Register with _$Register {
  const factory Register({
    required String name,
    required String email,
    required String password,
    required String passwordCheck,
    required String schoolName,
  }) = _Register;
}
