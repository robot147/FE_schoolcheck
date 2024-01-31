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
  List<SchoolInfo> get schoolInfo => throw _privateConstructorUsedError;
  String? get searchName => throw _privateConstructorUsedError;

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
  $Res call({List<SchoolInfo> schoolInfo, String? searchName});
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
    Object? searchName = freezed,
  }) {
    return _then(_value.copyWith(
      schoolInfo: null == schoolInfo
          ? _value.schoolInfo
          : schoolInfo // ignore: cast_nullable_to_non_nullable
              as List<SchoolInfo>,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call({List<SchoolInfo> schoolInfo, String? searchName});
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
    Object? searchName = freezed,
  }) {
    return _then(_$SchoolInfoDataImpl(
      schoolInfo: null == schoolInfo
          ? _value._schoolInfo
          : schoolInfo // ignore: cast_nullable_to_non_nullable
              as List<SchoolInfo>,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SchoolInfoDataImpl implements _SchoolInfoData {
  const _$SchoolInfoDataImpl(
      {required final List<SchoolInfo> schoolInfo, this.searchName})
      : _schoolInfo = schoolInfo;

  final List<SchoolInfo> _schoolInfo;
  @override
  List<SchoolInfo> get schoolInfo {
    if (_schoolInfo is EqualUnmodifiableListView) return _schoolInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schoolInfo);
  }

  @override
  final String? searchName;

  @override
  String toString() {
    return 'SchoolInfoData(schoolInfo: $schoolInfo, searchName: $searchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolInfoDataImpl &&
            const DeepCollectionEquality()
                .equals(other._schoolInfo, _schoolInfo) &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_schoolInfo), searchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolInfoDataImplCopyWith<_$SchoolInfoDataImpl> get copyWith =>
      __$$SchoolInfoDataImplCopyWithImpl<_$SchoolInfoDataImpl>(
          this, _$identity);
}

abstract class _SchoolInfoData implements SchoolInfoData {
  const factory _SchoolInfoData(
      {required final List<SchoolInfo> schoolInfo,
      final String? searchName}) = _$SchoolInfoDataImpl;

  @override
  List<SchoolInfo> get schoolInfo;
  @override
  String? get searchName;
  @override
  @JsonKey(ignore: true)
  _$$SchoolInfoDataImplCopyWith<_$SchoolInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchoolInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError; // 학교 이름
  String? get address => throw _privateConstructorUsedError; // 주소
  bool? get isSelected => throw _privateConstructorUsedError;

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
  $Res call({int? id, String? name, String? address, bool? isSelected});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({int? id, String? name, String? address, bool? isSelected});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$SchoolInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SchoolInfoImpl implements _SchoolInfo {
  const _$SchoolInfoImpl({this.id, this.name, this.address, this.isSelected});

  @override
  final int? id;
  @override
  final String? name;
// 학교 이름
  @override
  final String? address;
// 주소
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'SchoolInfo(id: $id, name: $name, address: $address, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolInfoImplCopyWith<_$SchoolInfoImpl> get copyWith =>
      __$$SchoolInfoImplCopyWithImpl<_$SchoolInfoImpl>(this, _$identity);
}

abstract class _SchoolInfo implements SchoolInfo {
  const factory _SchoolInfo(
      {final int? id,
      final String? name,
      final String? address,
      final bool? isSelected}) = _$SchoolInfoImpl;

  @override
  int? get id;
  @override
  String? get name;
  @override // 학교 이름
  String? get address;
  @override // 주소
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$SchoolInfoImplCopyWith<_$SchoolInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
