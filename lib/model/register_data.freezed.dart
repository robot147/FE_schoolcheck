// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterData {
  Register get registerInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call({Register registerInfo});

  $RegisterCopyWith<$Res> get registerInfo;
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerInfo = null,
  }) {
    return _then(_value.copyWith(
      registerInfo: null == registerInfo
          ? _value.registerInfo
          : registerInfo // ignore: cast_nullable_to_non_nullable
              as Register,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterCopyWith<$Res> get registerInfo {
    return $RegisterCopyWith<$Res>(_value.registerInfo, (value) {
      return _then(_value.copyWith(registerInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterDataImplCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$RegisterDataImplCopyWith(
          _$RegisterDataImpl value, $Res Function(_$RegisterDataImpl) then) =
      __$$RegisterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Register registerInfo});

  @override
  $RegisterCopyWith<$Res> get registerInfo;
}

/// @nodoc
class __$$RegisterDataImplCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$RegisterDataImpl>
    implements _$$RegisterDataImplCopyWith<$Res> {
  __$$RegisterDataImplCopyWithImpl(
      _$RegisterDataImpl _value, $Res Function(_$RegisterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerInfo = null,
  }) {
    return _then(_$RegisterDataImpl(
      registerInfo: null == registerInfo
          ? _value.registerInfo
          : registerInfo // ignore: cast_nullable_to_non_nullable
              as Register,
    ));
  }
}

/// @nodoc

class _$RegisterDataImpl implements _RegisterData {
  const _$RegisterDataImpl({required this.registerInfo});

  @override
  final Register registerInfo;

  @override
  String toString() {
    return 'RegisterData(registerInfo: $registerInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataImpl &&
            (identical(other.registerInfo, registerInfo) ||
                other.registerInfo == registerInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataImplCopyWith<_$RegisterDataImpl> get copyWith =>
      __$$RegisterDataImplCopyWithImpl<_$RegisterDataImpl>(this, _$identity);
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData({required final Register registerInfo}) =
      _$RegisterDataImpl;

  @override
  Register get registerInfo;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDataImplCopyWith<_$RegisterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Register {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordCheck => throw _privateConstructorUsedError;
  String get schoolName => throw _privateConstructorUsedError;
  int get schoolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res, Register>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String passwordCheck,
      String schoolName,
      int schoolId});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res, $Val extends Register>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordCheck = null,
    Object? schoolName = null,
    Object? schoolId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCheck: null == passwordCheck
          ? _value.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $RegisterCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String passwordCheck,
      String schoolName,
      int schoolId});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordCheck = null,
    Object? schoolName = null,
    Object? schoolId = null,
  }) {
    return _then(_$RegisterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCheck: null == passwordCheck
          ? _value.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.passwordCheck,
      required this.schoolName,
      required this.schoolId});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordCheck;
  @override
  final String schoolName;
  @override
  final int schoolId;

  @override
  String toString() {
    return 'Register(name: $name, email: $email, password: $password, passwordCheck: $passwordCheck, schoolName: $schoolName, schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, password, passwordCheck, schoolName, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);
}

abstract class _Register implements Register {
  const factory _Register(
      {required final String name,
      required final String email,
      required final String password,
      required final String passwordCheck,
      required final String schoolName,
      required final int schoolId}) = _$RegisterImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get passwordCheck;
  @override
  String get schoolName;
  @override
  int get schoolId;
  @override
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
