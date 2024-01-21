// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchoolInfoData {
  SchoolInfo get schoolInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolInfoDataCopyWith<SchoolInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolInfoDataCopyWith<$Res> {
  factory $SchoolInfoDataCopyWith(
          SchoolInfoData value, $Res Function(SchoolInfoData) then) =
      _$SchoolInfoDataCopyWithImpl<$Res, SchoolInfoData>;
  @useResult
  $Res call({SchoolInfo schoolInfo});

  $SchoolInfoCopyWith<$Res> get schoolInfo;
}

/// @nodoc
class _$SchoolInfoDataCopyWithImpl<$Res, $Val extends SchoolInfoData>
    implements $SchoolInfoDataCopyWith<$Res> {
  _$SchoolInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolInfo = null,
  }) {
    return _then(_value.copyWith(
      schoolInfo: null == schoolInfo
          ? _value.schoolInfo
          : schoolInfo // ignore: cast_nullable_to_non_nullable
              as SchoolInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchoolInfoCopyWith<$Res> get schoolInfo {
    return $SchoolInfoCopyWith<$Res>(_value.schoolInfo, (value) {
      return _then(_value.copyWith(schoolInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchoolInfoDataImplCopyWith<$Res>
    implements $SchoolInfoDataCopyWith<$Res> {
  factory _$$SchoolInfoDataImplCopyWith(_$SchoolInfoDataImpl value,
          $Res Function(_$SchoolInfoDataImpl) then) =
      __$$SchoolInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SchoolInfo schoolInfo});

  @override
  $SchoolInfoCopyWith<$Res> get schoolInfo;
}

/// @nodoc
class __$$SchoolInfoDataImplCopyWithImpl<$Res>
    extends _$SchoolInfoDataCopyWithImpl<$Res, _$SchoolInfoDataImpl>
    implements _$$SchoolInfoDataImplCopyWith<$Res> {
  __$$SchoolInfoDataImplCopyWithImpl(
      _$SchoolInfoDataImpl _value, $Res Function(_$SchoolInfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolInfo = null,
  }) {
    return _then(_$SchoolInfoDataImpl(
      schoolInfo: null == schoolInfo
          ? _value.schoolInfo
          : schoolInfo // ignore: cast_nullable_to_non_nullable
              as SchoolInfo,
    ));
  }
}

/// @nodoc

class _$SchoolInfoDataImpl implements _SchoolInfoData {
  const _$SchoolInfoDataImpl({required this.schoolInfo});

  @override
  final SchoolInfo schoolInfo;

  @override
  String toString() {
    return 'SchoolInfoData(schoolInfo: $schoolInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolInfoDataImpl &&
            (identical(other.schoolInfo, schoolInfo) ||
                other.schoolInfo == schoolInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolInfoDataImplCopyWith<_$SchoolInfoDataImpl> get copyWith =>
      __$$SchoolInfoDataImplCopyWithImpl<_$SchoolInfoDataImpl>(
          this, _$identity);
}

abstract class _SchoolInfoData implements SchoolInfoData {
  const factory _SchoolInfoData({required final SchoolInfo schoolInfo}) =
      _$SchoolInfoDataImpl;

  @override
  SchoolInfo get schoolInfo;
  @override
  @JsonKey(ignore: true)
  _$$SchoolInfoDataImplCopyWith<_$SchoolInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchoolInfo {
  String? get totalCount => throw _privateConstructorUsedError;
  String? get schoolName => throw _privateConstructorUsedError;
  String? get schoolGubun => throw _privateConstructorUsedError;
  String? get schoolType => throw _privateConstructorUsedError;
  String? get estType => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolInfoCopyWith<SchoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolInfoCopyWith<$Res> {
  factory $SchoolInfoCopyWith(
          SchoolInfo value, $Res Function(SchoolInfo) then) =
      _$SchoolInfoCopyWithImpl<$Res, SchoolInfo>;
  @useResult
  $Res call(
      {String? totalCount,
      String? schoolName,
      String? schoolGubun,
      String? schoolType,
      String? estType,
      String? region,
      String? link});
}

/// @nodoc
class _$SchoolInfoCopyWithImpl<$Res, $Val extends SchoolInfo>
    implements $SchoolInfoCopyWith<$Res> {
  _$SchoolInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? schoolName = freezed,
    Object? schoolGubun = freezed,
    Object? schoolType = freezed,
    Object? estType = freezed,
    Object? region = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolGubun: freezed == schoolGubun
          ? _value.schoolGubun
          : schoolGubun // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolType: freezed == schoolType
          ? _value.schoolType
          : schoolType // ignore: cast_nullable_to_non_nullable
              as String?,
      estType: freezed == estType
          ? _value.estType
          : estType // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolInfoImplCopyWith<$Res>
    implements $SchoolInfoCopyWith<$Res> {
  factory _$$SchoolInfoImplCopyWith(
          _$SchoolInfoImpl value, $Res Function(_$SchoolInfoImpl) then) =
      __$$SchoolInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? totalCount,
      String? schoolName,
      String? schoolGubun,
      String? schoolType,
      String? estType,
      String? region,
      String? link});
}

/// @nodoc
class __$$SchoolInfoImplCopyWithImpl<$Res>
    extends _$SchoolInfoCopyWithImpl<$Res, _$SchoolInfoImpl>
    implements _$$SchoolInfoImplCopyWith<$Res> {
  __$$SchoolInfoImplCopyWithImpl(
      _$SchoolInfoImpl _value, $Res Function(_$SchoolInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? schoolName = freezed,
    Object? schoolGubun = freezed,
    Object? schoolType = freezed,
    Object? estType = freezed,
    Object? region = freezed,
    Object? link = freezed,
  }) {
    return _then(_$SchoolInfoImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolGubun: freezed == schoolGubun
          ? _value.schoolGubun
          : schoolGubun // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolType: freezed == schoolType
          ? _value.schoolType
          : schoolType // ignore: cast_nullable_to_non_nullable
              as String?,
      estType: freezed == estType
          ? _value.estType
          : estType // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SchoolInfoImpl implements _SchoolInfo {
  const _$SchoolInfoImpl(
      {this.totalCount,
      this.schoolName,
      this.schoolGubun,
      this.schoolType,
      this.estType,
      this.region,
      this.link});

  @override
  final String? totalCount;
  @override
  final String? schoolName;
  @override
  final String? schoolGubun;
  @override
  final String? schoolType;
  @override
  final String? estType;
  @override
  final String? region;
  @override
  final String? link;

  @override
  String toString() {
    return 'SchoolInfo(totalCount: $totalCount, schoolName: $schoolName, schoolGubun: $schoolGubun, schoolType: $schoolType, estType: $estType, region: $region, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolInfoImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolGubun, schoolGubun) ||
                other.schoolGubun == schoolGubun) &&
            (identical(other.schoolType, schoolType) ||
                other.schoolType == schoolType) &&
            (identical(other.estType, estType) || other.estType == estType) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCount, schoolName,
      schoolGubun, schoolType, estType, region, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolInfoImplCopyWith<_$SchoolInfoImpl> get copyWith =>
      __$$SchoolInfoImplCopyWithImpl<_$SchoolInfoImpl>(this, _$identity);
}

abstract class _SchoolInfo implements SchoolInfo {
  const factory _SchoolInfo(
      {final String? totalCount,
      final String? schoolName,
      final String? schoolGubun,
      final String? schoolType,
      final String? estType,
      final String? region,
      final String? link}) = _$SchoolInfoImpl;

  @override
  String? get totalCount;
  @override
  String? get schoolName;
  @override
  String? get schoolGubun;
  @override
  String? get schoolType;
  @override
  String? get estType;
  @override
  String? get region;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$SchoolInfoImplCopyWith<_$SchoolInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
