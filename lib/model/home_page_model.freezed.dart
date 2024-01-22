// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageModelData {
  HomePageModel get homePageModelInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageModelDataCopyWith<HomePageModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelDataCopyWith<$Res> {
  factory $HomePageModelDataCopyWith(
          HomePageModelData value, $Res Function(HomePageModelData) then) =
      _$HomePageModelDataCopyWithImpl<$Res, HomePageModelData>;
  @useResult
  $Res call({HomePageModel homePageModelInfo});

  $HomePageModelCopyWith<$Res> get homePageModelInfo;
}

/// @nodoc
class _$HomePageModelDataCopyWithImpl<$Res, $Val extends HomePageModelData>
    implements $HomePageModelDataCopyWith<$Res> {
  _$HomePageModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homePageModelInfo = null,
  }) {
    return _then(_value.copyWith(
      homePageModelInfo: null == homePageModelInfo
          ? _value.homePageModelInfo
          : homePageModelInfo // ignore: cast_nullable_to_non_nullable
              as HomePageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomePageModelCopyWith<$Res> get homePageModelInfo {
    return $HomePageModelCopyWith<$Res>(_value.homePageModelInfo, (value) {
      return _then(_value.copyWith(homePageModelInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageModelDataImplCopyWith<$Res>
    implements $HomePageModelDataCopyWith<$Res> {
  factory _$$HomePageModelDataImplCopyWith(_$HomePageModelDataImpl value,
          $Res Function(_$HomePageModelDataImpl) then) =
      __$$HomePageModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomePageModel homePageModelInfo});

  @override
  $HomePageModelCopyWith<$Res> get homePageModelInfo;
}

/// @nodoc
class __$$HomePageModelDataImplCopyWithImpl<$Res>
    extends _$HomePageModelDataCopyWithImpl<$Res, _$HomePageModelDataImpl>
    implements _$$HomePageModelDataImplCopyWith<$Res> {
  __$$HomePageModelDataImplCopyWithImpl(_$HomePageModelDataImpl _value,
      $Res Function(_$HomePageModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homePageModelInfo = null,
  }) {
    return _then(_$HomePageModelDataImpl(
      homePageModelInfo: null == homePageModelInfo
          ? _value.homePageModelInfo
          : homePageModelInfo // ignore: cast_nullable_to_non_nullable
              as HomePageModel,
    ));
  }
}

/// @nodoc

class _$HomePageModelDataImpl implements _HomePageModelData {
  const _$HomePageModelDataImpl({required this.homePageModelInfo});

  @override
  final HomePageModel homePageModelInfo;

  @override
  String toString() {
    return 'HomePageModelData(homePageModelInfo: $homePageModelInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelDataImpl &&
            (identical(other.homePageModelInfo, homePageModelInfo) ||
                other.homePageModelInfo == homePageModelInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homePageModelInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageModelDataImplCopyWith<_$HomePageModelDataImpl> get copyWith =>
      __$$HomePageModelDataImplCopyWithImpl<_$HomePageModelDataImpl>(
          this, _$identity);
}

abstract class _HomePageModelData implements HomePageModelData {
  const factory _HomePageModelData(
          {required final HomePageModel homePageModelInfo}) =
      _$HomePageModelDataImpl;

  @override
  HomePageModel get homePageModelInfo;
  @override
  @JsonKey(ignore: true)
  _$$HomePageModelDataImplCopyWith<_$HomePageModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageModelCopyWith<HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelCopyWith<$Res> {
  factory $HomePageModelCopyWith(
          HomePageModel value, $Res Function(HomePageModel) then) =
      _$HomePageModelCopyWithImpl<$Res, HomePageModel>;
  @useResult
  $Res call({int selectedIndex, bool isLocked});
}

/// @nodoc
class _$HomePageModelCopyWithImpl<$Res, $Val extends HomePageModel>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isLocked = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageModelImplCopyWith<$Res>
    implements $HomePageModelCopyWith<$Res> {
  factory _$$HomePageModelImplCopyWith(
          _$HomePageModelImpl value, $Res Function(_$HomePageModelImpl) then) =
      __$$HomePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, bool isLocked});
}

/// @nodoc
class __$$HomePageModelImplCopyWithImpl<$Res>
    extends _$HomePageModelCopyWithImpl<$Res, _$HomePageModelImpl>
    implements _$$HomePageModelImplCopyWith<$Res> {
  __$$HomePageModelImplCopyWithImpl(
      _$HomePageModelImpl _value, $Res Function(_$HomePageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isLocked = null,
  }) {
    return _then(_$HomePageModelImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomePageModelImpl implements _HomePageModel {
  const _$HomePageModelImpl(
      {required this.selectedIndex, required this.isLocked});

  @override
  final int selectedIndex;
  @override
  final bool isLocked;

  @override
  String toString() {
    return 'HomePageModel(selectedIndex: $selectedIndex, isLocked: $isLocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, isLocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      __$$HomePageModelImplCopyWithImpl<_$HomePageModelImpl>(this, _$identity);
}

abstract class _HomePageModel implements HomePageModel {
  const factory _HomePageModel(
      {required final int selectedIndex,
      required final bool isLocked}) = _$HomePageModelImpl;

  @override
  int get selectedIndex;
  @override
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
