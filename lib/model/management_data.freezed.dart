// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'management_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassManagementData {
  ClassManagement get classManagementInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassManagementDataCopyWith<ClassManagementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassManagementDataCopyWith<$Res> {
  factory $ClassManagementDataCopyWith(
          ClassManagementData value, $Res Function(ClassManagementData) then) =
      _$ClassManagementDataCopyWithImpl<$Res, ClassManagementData>;
  @useResult
  $Res call({ClassManagement classManagementInfo});

  $ClassManagementCopyWith<$Res> get classManagementInfo;
}

/// @nodoc
class _$ClassManagementDataCopyWithImpl<$Res, $Val extends ClassManagementData>
    implements $ClassManagementDataCopyWith<$Res> {
  _$ClassManagementDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classManagementInfo = null,
  }) {
    return _then(_value.copyWith(
      classManagementInfo: null == classManagementInfo
          ? _value.classManagementInfo
          : classManagementInfo // ignore: cast_nullable_to_non_nullable
              as ClassManagement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassManagementCopyWith<$Res> get classManagementInfo {
    return $ClassManagementCopyWith<$Res>(_value.classManagementInfo, (value) {
      return _then(_value.copyWith(classManagementInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassManagementDataImplCopyWith<$Res>
    implements $ClassManagementDataCopyWith<$Res> {
  factory _$$ClassManagementDataImplCopyWith(_$ClassManagementDataImpl value,
          $Res Function(_$ClassManagementDataImpl) then) =
      __$$ClassManagementDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClassManagement classManagementInfo});

  @override
  $ClassManagementCopyWith<$Res> get classManagementInfo;
}

/// @nodoc
class __$$ClassManagementDataImplCopyWithImpl<$Res>
    extends _$ClassManagementDataCopyWithImpl<$Res, _$ClassManagementDataImpl>
    implements _$$ClassManagementDataImplCopyWith<$Res> {
  __$$ClassManagementDataImplCopyWithImpl(_$ClassManagementDataImpl _value,
      $Res Function(_$ClassManagementDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classManagementInfo = null,
  }) {
    return _then(_$ClassManagementDataImpl(
      classManagementInfo: null == classManagementInfo
          ? _value.classManagementInfo
          : classManagementInfo // ignore: cast_nullable_to_non_nullable
              as ClassManagement,
    ));
  }
}

/// @nodoc

class _$ClassManagementDataImpl implements _ClassManagementData {
  const _$ClassManagementDataImpl({required this.classManagementInfo});

  @override
  final ClassManagement classManagementInfo;

  @override
  String toString() {
    return 'ClassManagementData(classManagementInfo: $classManagementInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassManagementDataImpl &&
            (identical(other.classManagementInfo, classManagementInfo) ||
                other.classManagementInfo == classManagementInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classManagementInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassManagementDataImplCopyWith<_$ClassManagementDataImpl> get copyWith =>
      __$$ClassManagementDataImplCopyWithImpl<_$ClassManagementDataImpl>(
          this, _$identity);
}

abstract class _ClassManagementData implements ClassManagementData {
  const factory _ClassManagementData(
          {required final ClassManagement classManagementInfo}) =
      _$ClassManagementDataImpl;

  @override
  ClassManagement get classManagementInfo;
  @override
  @JsonKey(ignore: true)
  _$$ClassManagementDataImplCopyWith<_$ClassManagementDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassManagement {
  String? get id => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassManagementCopyWith<ClassManagement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassManagementCopyWith<$Res> {
  factory $ClassManagementCopyWith(
          ClassManagement value, $Res Function(ClassManagement) then) =
      _$ClassManagementCopyWithImpl<$Res, ClassManagement>;
  @useResult
  $Res call(
      {String? id,
      String? password,
      String? refreshToken,
      String? accessToken});
}

/// @nodoc
class _$ClassManagementCopyWithImpl<$Res, $Val extends ClassManagement>
    implements $ClassManagementCopyWith<$Res> {
  _$ClassManagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassManagementImplCopyWith<$Res>
    implements $ClassManagementCopyWith<$Res> {
  factory _$$ClassManagementImplCopyWith(_$ClassManagementImpl value,
          $Res Function(_$ClassManagementImpl) then) =
      __$$ClassManagementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? password,
      String? refreshToken,
      String? accessToken});
}

/// @nodoc
class __$$ClassManagementImplCopyWithImpl<$Res>
    extends _$ClassManagementCopyWithImpl<$Res, _$ClassManagementImpl>
    implements _$$ClassManagementImplCopyWith<$Res> {
  __$$ClassManagementImplCopyWithImpl(
      _$ClassManagementImpl _value, $Res Function(_$ClassManagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$ClassManagementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClassManagementImpl implements _ClassManagement {
  const _$ClassManagementImpl(
      {this.id, this.password, this.refreshToken, this.accessToken});

  @override
  final String? id;
  @override
  final String? password;
  @override
  final String? refreshToken;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'ClassManagement(id: $id, password: $password, refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassManagementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, password, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassManagementImplCopyWith<_$ClassManagementImpl> get copyWith =>
      __$$ClassManagementImplCopyWithImpl<_$ClassManagementImpl>(
          this, _$identity);
}

abstract class _ClassManagement implements ClassManagement {
  const factory _ClassManagement(
      {final String? id,
      final String? password,
      final String? refreshToken,
      final String? accessToken}) = _$ClassManagementImpl;

  @override
  String? get id;
  @override
  String? get password;
  @override
  String? get refreshToken;
  @override
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$ClassManagementImplCopyWith<_$ClassManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleManagementData {
  ScheduleManagement get scheduleManagementInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleManagementDataCopyWith<ScheduleManagementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleManagementDataCopyWith<$Res> {
  factory $ScheduleManagementDataCopyWith(ScheduleManagementData value,
          $Res Function(ScheduleManagementData) then) =
      _$ScheduleManagementDataCopyWithImpl<$Res, ScheduleManagementData>;
  @useResult
  $Res call({ScheduleManagement scheduleManagementInfo});

  $ScheduleManagementCopyWith<$Res> get scheduleManagementInfo;
}

/// @nodoc
class _$ScheduleManagementDataCopyWithImpl<$Res,
        $Val extends ScheduleManagementData>
    implements $ScheduleManagementDataCopyWith<$Res> {
  _$ScheduleManagementDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleManagementInfo = null,
  }) {
    return _then(_value.copyWith(
      scheduleManagementInfo: null == scheduleManagementInfo
          ? _value.scheduleManagementInfo
          : scheduleManagementInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleManagement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleManagementCopyWith<$Res> get scheduleManagementInfo {
    return $ScheduleManagementCopyWith<$Res>(_value.scheduleManagementInfo,
        (value) {
      return _then(_value.copyWith(scheduleManagementInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleManagementDataImplCopyWith<$Res>
    implements $ScheduleManagementDataCopyWith<$Res> {
  factory _$$ScheduleManagementDataImplCopyWith(
          _$ScheduleManagementDataImpl value,
          $Res Function(_$ScheduleManagementDataImpl) then) =
      __$$ScheduleManagementDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScheduleManagement scheduleManagementInfo});

  @override
  $ScheduleManagementCopyWith<$Res> get scheduleManagementInfo;
}

/// @nodoc
class __$$ScheduleManagementDataImplCopyWithImpl<$Res>
    extends _$ScheduleManagementDataCopyWithImpl<$Res,
        _$ScheduleManagementDataImpl>
    implements _$$ScheduleManagementDataImplCopyWith<$Res> {
  __$$ScheduleManagementDataImplCopyWithImpl(
      _$ScheduleManagementDataImpl _value,
      $Res Function(_$ScheduleManagementDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleManagementInfo = null,
  }) {
    return _then(_$ScheduleManagementDataImpl(
      scheduleManagementInfo: null == scheduleManagementInfo
          ? _value.scheduleManagementInfo
          : scheduleManagementInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleManagement,
    ));
  }
}

/// @nodoc

class _$ScheduleManagementDataImpl implements _ScheduleManagementData {
  const _$ScheduleManagementDataImpl({required this.scheduleManagementInfo});

  @override
  final ScheduleManagement scheduleManagementInfo;

  @override
  String toString() {
    return 'ScheduleManagementData(scheduleManagementInfo: $scheduleManagementInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleManagementDataImpl &&
            (identical(other.scheduleManagementInfo, scheduleManagementInfo) ||
                other.scheduleManagementInfo == scheduleManagementInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleManagementInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleManagementDataImplCopyWith<_$ScheduleManagementDataImpl>
      get copyWith => __$$ScheduleManagementDataImplCopyWithImpl<
          _$ScheduleManagementDataImpl>(this, _$identity);
}

abstract class _ScheduleManagementData implements ScheduleManagementData {
  const factory _ScheduleManagementData(
          {required final ScheduleManagement scheduleManagementInfo}) =
      _$ScheduleManagementDataImpl;

  @override
  ScheduleManagement get scheduleManagementInfo;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleManagementDataImplCopyWith<_$ScheduleManagementDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleManagement {
  String? get id => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleManagementCopyWith<ScheduleManagement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleManagementCopyWith<$Res> {
  factory $ScheduleManagementCopyWith(
          ScheduleManagement value, $Res Function(ScheduleManagement) then) =
      _$ScheduleManagementCopyWithImpl<$Res, ScheduleManagement>;
  @useResult
  $Res call(
      {String? id,
      String? password,
      String? refreshToken,
      String? accessToken});
}

/// @nodoc
class _$ScheduleManagementCopyWithImpl<$Res, $Val extends ScheduleManagement>
    implements $ScheduleManagementCopyWith<$Res> {
  _$ScheduleManagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleManagementImplCopyWith<$Res>
    implements $ScheduleManagementCopyWith<$Res> {
  factory _$$ScheduleManagementImplCopyWith(_$ScheduleManagementImpl value,
          $Res Function(_$ScheduleManagementImpl) then) =
      __$$ScheduleManagementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? password,
      String? refreshToken,
      String? accessToken});
}

/// @nodoc
class __$$ScheduleManagementImplCopyWithImpl<$Res>
    extends _$ScheduleManagementCopyWithImpl<$Res, _$ScheduleManagementImpl>
    implements _$$ScheduleManagementImplCopyWith<$Res> {
  __$$ScheduleManagementImplCopyWithImpl(_$ScheduleManagementImpl _value,
      $Res Function(_$ScheduleManagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? refreshToken = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$ScheduleManagementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScheduleManagementImpl implements _ScheduleManagement {
  const _$ScheduleManagementImpl(
      {this.id, this.password, this.refreshToken, this.accessToken});

  @override
  final String? id;
  @override
  final String? password;
  @override
  final String? refreshToken;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'ScheduleManagement(id: $id, password: $password, refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleManagementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, password, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleManagementImplCopyWith<_$ScheduleManagementImpl> get copyWith =>
      __$$ScheduleManagementImplCopyWithImpl<_$ScheduleManagementImpl>(
          this, _$identity);
}

abstract class _ScheduleManagement implements ScheduleManagement {
  const factory _ScheduleManagement(
      {final String? id,
      final String? password,
      final String? refreshToken,
      final String? accessToken}) = _$ScheduleManagementImpl;

  @override
  String? get id;
  @override
  String? get password;
  @override
  String? get refreshToken;
  @override
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleManagementImplCopyWith<_$ScheduleManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
