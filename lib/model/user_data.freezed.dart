// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserData {
  User get userInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({User userInfo});

  $UserCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_value.copyWith(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userInfo {
    return $UserCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User userInfo});

  @override
  $UserCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$UserDataImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({required this.userInfo});

  @override
  final User userInfo;

  @override
  String toString() {
    return 'UserData(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData({required final User userInfo}) = _$UserDataImpl;

  @override
  User get userInfo;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$User {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get school => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? name, String? email, String? password, String? school});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? school = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? password, String? school});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? school = freezed,
  }) {
    return _then(_$UserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl({this.name, this.email, this.password, this.school});

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? school;

  @override
  String toString() {
    return 'User(name: $name, email: $email, password: $password, school: $school)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.school, school) || other.school == school));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, school);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {final String? name,
      final String? email,
      final String? password,
      final String? school}) = _$UserImpl;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get school;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterUserData {
  RegisterUser get registerUserInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserDataCopyWith<RegisterUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserDataCopyWith<$Res> {
  factory $RegisterUserDataCopyWith(
          RegisterUserData value, $Res Function(RegisterUserData) then) =
      _$RegisterUserDataCopyWithImpl<$Res, RegisterUserData>;
  @useResult
  $Res call({RegisterUser registerUserInfo});

  $RegisterUserCopyWith<$Res> get registerUserInfo;
}

/// @nodoc
class _$RegisterUserDataCopyWithImpl<$Res, $Val extends RegisterUserData>
    implements $RegisterUserDataCopyWith<$Res> {
  _$RegisterUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerUserInfo = null,
  }) {
    return _then(_value.copyWith(
      registerUserInfo: null == registerUserInfo
          ? _value.registerUserInfo
          : registerUserInfo // ignore: cast_nullable_to_non_nullable
              as RegisterUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterUserCopyWith<$Res> get registerUserInfo {
    return $RegisterUserCopyWith<$Res>(_value.registerUserInfo, (value) {
      return _then(_value.copyWith(registerUserInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUserDataImplCopyWith<$Res>
    implements $RegisterUserDataCopyWith<$Res> {
  factory _$$RegisterUserDataImplCopyWith(_$RegisterUserDataImpl value,
          $Res Function(_$RegisterUserDataImpl) then) =
      __$$RegisterUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterUser registerUserInfo});

  @override
  $RegisterUserCopyWith<$Res> get registerUserInfo;
}

/// @nodoc
class __$$RegisterUserDataImplCopyWithImpl<$Res>
    extends _$RegisterUserDataCopyWithImpl<$Res, _$RegisterUserDataImpl>
    implements _$$RegisterUserDataImplCopyWith<$Res> {
  __$$RegisterUserDataImplCopyWithImpl(_$RegisterUserDataImpl _value,
      $Res Function(_$RegisterUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerUserInfo = null,
  }) {
    return _then(_$RegisterUserDataImpl(
      registerUserInfo: null == registerUserInfo
          ? _value.registerUserInfo
          : registerUserInfo // ignore: cast_nullable_to_non_nullable
              as RegisterUser,
    ));
  }
}

/// @nodoc

class _$RegisterUserDataImpl implements _RegisterUserData {
  const _$RegisterUserDataImpl({required this.registerUserInfo});

  @override
  final RegisterUser registerUserInfo;

  @override
  String toString() {
    return 'RegisterUserData(registerUserInfo: $registerUserInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserDataImpl &&
            (identical(other.registerUserInfo, registerUserInfo) ||
                other.registerUserInfo == registerUserInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerUserInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserDataImplCopyWith<_$RegisterUserDataImpl> get copyWith =>
      __$$RegisterUserDataImplCopyWithImpl<_$RegisterUserDataImpl>(
          this, _$identity);
}

abstract class _RegisterUserData implements RegisterUserData {
  const factory _RegisterUserData(
      {required final RegisterUser registerUserInfo}) = _$RegisterUserDataImpl;

  @override
  RegisterUser get registerUserInfo;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserDataImplCopyWith<_$RegisterUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterUser {
  bool? get isCheckAgreeAll =>
      throw _privateConstructorUsedError; // 동의항목 (추가적으로 동의할 것 발생시 추가)
  bool? get isCheckAgreeTermOfUse =>
      throw _privateConstructorUsedError; // 이용약관 동의(필수)
  bool? get isCheckAgreePrivateCollectionAndUse =>
      throw _privateConstructorUsedError; // 개인정보 수집 및 이용 동의(필수)
  bool? get isArrowAgreeTermOfUse =>
      throw _privateConstructorUsedError; // 이용약관 동의 내용
  bool? get isArrowAgreePrivateCollectionAndUse =>
      throw _privateConstructorUsedError; // 개인정보 수집 및 이용 동의 내용
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get passwordValidate =>
      throw _privateConstructorUsedError; // 비밀번호 확인용 변수
  String? get school => throw _privateConstructorUsedError;
  int? get paginate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res, RegisterUser>;
  @useResult
  $Res call(
      {bool? isCheckAgreeAll,
      bool? isCheckAgreeTermOfUse,
      bool? isCheckAgreePrivateCollectionAndUse,
      bool? isArrowAgreeTermOfUse,
      bool? isArrowAgreePrivateCollectionAndUse,
      String? name,
      String? email,
      String? password,
      String? passwordValidate,
      String? school,
      int? paginate});
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res, $Val extends RegisterUser>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckAgreeAll = freezed,
    Object? isCheckAgreeTermOfUse = freezed,
    Object? isCheckAgreePrivateCollectionAndUse = freezed,
    Object? isArrowAgreeTermOfUse = freezed,
    Object? isArrowAgreePrivateCollectionAndUse = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordValidate = freezed,
    Object? school = freezed,
    Object? paginate = freezed,
  }) {
    return _then(_value.copyWith(
      isCheckAgreeAll: freezed == isCheckAgreeAll
          ? _value.isCheckAgreeAll
          : isCheckAgreeAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckAgreeTermOfUse: freezed == isCheckAgreeTermOfUse
          ? _value.isCheckAgreeTermOfUse
          : isCheckAgreeTermOfUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckAgreePrivateCollectionAndUse: freezed ==
              isCheckAgreePrivateCollectionAndUse
          ? _value.isCheckAgreePrivateCollectionAndUse
          : isCheckAgreePrivateCollectionAndUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isArrowAgreeTermOfUse: freezed == isArrowAgreeTermOfUse
          ? _value.isArrowAgreeTermOfUse
          : isArrowAgreeTermOfUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isArrowAgreePrivateCollectionAndUse: freezed ==
              isArrowAgreePrivateCollectionAndUse
          ? _value.isArrowAgreePrivateCollectionAndUse
          : isArrowAgreePrivateCollectionAndUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordValidate: freezed == passwordValidate
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res>
    implements $RegisterUserCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isCheckAgreeAll,
      bool? isCheckAgreeTermOfUse,
      bool? isCheckAgreePrivateCollectionAndUse,
      bool? isArrowAgreeTermOfUse,
      bool? isArrowAgreePrivateCollectionAndUse,
      String? name,
      String? email,
      String? password,
      String? passwordValidate,
      String? school,
      int? paginate});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$RegisterUserCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckAgreeAll = freezed,
    Object? isCheckAgreeTermOfUse = freezed,
    Object? isCheckAgreePrivateCollectionAndUse = freezed,
    Object? isArrowAgreeTermOfUse = freezed,
    Object? isArrowAgreePrivateCollectionAndUse = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordValidate = freezed,
    Object? school = freezed,
    Object? paginate = freezed,
  }) {
    return _then(_$RegisterUserImpl(
      isCheckAgreeAll: freezed == isCheckAgreeAll
          ? _value.isCheckAgreeAll
          : isCheckAgreeAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckAgreeTermOfUse: freezed == isCheckAgreeTermOfUse
          ? _value.isCheckAgreeTermOfUse
          : isCheckAgreeTermOfUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckAgreePrivateCollectionAndUse: freezed ==
              isCheckAgreePrivateCollectionAndUse
          ? _value.isCheckAgreePrivateCollectionAndUse
          : isCheckAgreePrivateCollectionAndUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isArrowAgreeTermOfUse: freezed == isArrowAgreeTermOfUse
          ? _value.isArrowAgreeTermOfUse
          : isArrowAgreeTermOfUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      isArrowAgreePrivateCollectionAndUse: freezed ==
              isArrowAgreePrivateCollectionAndUse
          ? _value.isArrowAgreePrivateCollectionAndUse
          : isArrowAgreePrivateCollectionAndUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordValidate: freezed == passwordValidate
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl implements _RegisterUser {
  const _$RegisterUserImpl(
      {this.isCheckAgreeAll,
      this.isCheckAgreeTermOfUse,
      this.isCheckAgreePrivateCollectionAndUse,
      this.isArrowAgreeTermOfUse,
      this.isArrowAgreePrivateCollectionAndUse,
      this.name,
      this.email,
      this.password,
      this.passwordValidate,
      this.school,
      this.paginate});

  @override
  final bool? isCheckAgreeAll;
// 동의항목 (추가적으로 동의할 것 발생시 추가)
  @override
  final bool? isCheckAgreeTermOfUse;
// 이용약관 동의(필수)
  @override
  final bool? isCheckAgreePrivateCollectionAndUse;
// 개인정보 수집 및 이용 동의(필수)
  @override
  final bool? isArrowAgreeTermOfUse;
// 이용약관 동의 내용
  @override
  final bool? isArrowAgreePrivateCollectionAndUse;
// 개인정보 수집 및 이용 동의 내용
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? passwordValidate;
// 비밀번호 확인용 변수
  @override
  final String? school;
  @override
  final int? paginate;

  @override
  String toString() {
    return 'RegisterUser(isCheckAgreeAll: $isCheckAgreeAll, isCheckAgreeTermOfUse: $isCheckAgreeTermOfUse, isCheckAgreePrivateCollectionAndUse: $isCheckAgreePrivateCollectionAndUse, isArrowAgreeTermOfUse: $isArrowAgreeTermOfUse, isArrowAgreePrivateCollectionAndUse: $isArrowAgreePrivateCollectionAndUse, name: $name, email: $email, password: $password, passwordValidate: $passwordValidate, school: $school, paginate: $paginate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.isCheckAgreeAll, isCheckAgreeAll) ||
                other.isCheckAgreeAll == isCheckAgreeAll) &&
            (identical(other.isCheckAgreeTermOfUse, isCheckAgreeTermOfUse) ||
                other.isCheckAgreeTermOfUse == isCheckAgreeTermOfUse) &&
            (identical(other.isCheckAgreePrivateCollectionAndUse,
                    isCheckAgreePrivateCollectionAndUse) ||
                other.isCheckAgreePrivateCollectionAndUse ==
                    isCheckAgreePrivateCollectionAndUse) &&
            (identical(other.isArrowAgreeTermOfUse, isArrowAgreeTermOfUse) ||
                other.isArrowAgreeTermOfUse == isArrowAgreeTermOfUse) &&
            (identical(other.isArrowAgreePrivateCollectionAndUse,
                    isArrowAgreePrivateCollectionAndUse) ||
                other.isArrowAgreePrivateCollectionAndUse ==
                    isArrowAgreePrivateCollectionAndUse) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordValidate, passwordValidate) ||
                other.passwordValidate == passwordValidate) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCheckAgreeAll,
      isCheckAgreeTermOfUse,
      isCheckAgreePrivateCollectionAndUse,
      isArrowAgreeTermOfUse,
      isArrowAgreePrivateCollectionAndUse,
      name,
      email,
      password,
      passwordValidate,
      school,
      paginate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);
}

abstract class _RegisterUser implements RegisterUser {
  const factory _RegisterUser(
      {final bool? isCheckAgreeAll,
      final bool? isCheckAgreeTermOfUse,
      final bool? isCheckAgreePrivateCollectionAndUse,
      final bool? isArrowAgreeTermOfUse,
      final bool? isArrowAgreePrivateCollectionAndUse,
      final String? name,
      final String? email,
      final String? password,
      final String? passwordValidate,
      final String? school,
      final int? paginate}) = _$RegisterUserImpl;

  @override
  bool? get isCheckAgreeAll;
  @override // 동의항목 (추가적으로 동의할 것 발생시 추가)
  bool? get isCheckAgreeTermOfUse;
  @override // 이용약관 동의(필수)
  bool? get isCheckAgreePrivateCollectionAndUse;
  @override // 개인정보 수집 및 이용 동의(필수)
  bool? get isArrowAgreeTermOfUse;
  @override // 이용약관 동의 내용
  bool? get isArrowAgreePrivateCollectionAndUse;
  @override // 개인정보 수집 및 이용 동의 내용
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get passwordValidate;
  @override // 비밀번호 확인용 변수
  String? get school;
  @override
  int? get paginate;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
