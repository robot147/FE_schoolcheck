// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sidebar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SidebarModelData {
  SidebarModel get sidebarModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SidebarModelDataCopyWith<SidebarModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidebarModelDataCopyWith<$Res> {
  factory $SidebarModelDataCopyWith(
          SidebarModelData value, $Res Function(SidebarModelData) then) =
      _$SidebarModelDataCopyWithImpl<$Res, SidebarModelData>;
  @useResult
  $Res call({SidebarModel sidebarModel});

  $SidebarModelCopyWith<$Res> get sidebarModel;
}

/// @nodoc
class _$SidebarModelDataCopyWithImpl<$Res, $Val extends SidebarModelData>
    implements $SidebarModelDataCopyWith<$Res> {
  _$SidebarModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sidebarModel = null,
  }) {
    return _then(_value.copyWith(
      sidebarModel: null == sidebarModel
          ? _value.sidebarModel
          : sidebarModel // ignore: cast_nullable_to_non_nullable
              as SidebarModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SidebarModelCopyWith<$Res> get sidebarModel {
    return $SidebarModelCopyWith<$Res>(_value.sidebarModel, (value) {
      return _then(_value.copyWith(sidebarModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SidebarModelDataImplCopyWith<$Res>
    implements $SidebarModelDataCopyWith<$Res> {
  factory _$$SidebarModelDataImplCopyWith(_$SidebarModelDataImpl value,
          $Res Function(_$SidebarModelDataImpl) then) =
      __$$SidebarModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SidebarModel sidebarModel});

  @override
  $SidebarModelCopyWith<$Res> get sidebarModel;
}

/// @nodoc
class __$$SidebarModelDataImplCopyWithImpl<$Res>
    extends _$SidebarModelDataCopyWithImpl<$Res, _$SidebarModelDataImpl>
    implements _$$SidebarModelDataImplCopyWith<$Res> {
  __$$SidebarModelDataImplCopyWithImpl(_$SidebarModelDataImpl _value,
      $Res Function(_$SidebarModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sidebarModel = null,
  }) {
    return _then(_$SidebarModelDataImpl(
      sidebarModel: null == sidebarModel
          ? _value.sidebarModel
          : sidebarModel // ignore: cast_nullable_to_non_nullable
              as SidebarModel,
    ));
  }
}

/// @nodoc

class _$SidebarModelDataImpl implements _SidebarModelData {
  const _$SidebarModelDataImpl({required this.sidebarModel});

  @override
  final SidebarModel sidebarModel;

  @override
  String toString() {
    return 'SidebarModelData(sidebarModel: $sidebarModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SidebarModelDataImpl &&
            (identical(other.sidebarModel, sidebarModel) ||
                other.sidebarModel == sidebarModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sidebarModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SidebarModelDataImplCopyWith<_$SidebarModelDataImpl> get copyWith =>
      __$$SidebarModelDataImplCopyWithImpl<_$SidebarModelDataImpl>(
          this, _$identity);
}

abstract class _SidebarModelData implements SidebarModelData {
  const factory _SidebarModelData({required final SidebarModel sidebarModel}) =
      _$SidebarModelDataImpl;

  @override
  SidebarModel get sidebarModel;
  @override
  @JsonKey(ignore: true)
  _$$SidebarModelDataImplCopyWith<_$SidebarModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SidebarModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SidebarModelCopyWith<SidebarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidebarModelCopyWith<$Res> {
  factory $SidebarModelCopyWith(
          SidebarModel value, $Res Function(SidebarModel) then) =
      _$SidebarModelCopyWithImpl<$Res, SidebarModel>;
  @useResult
  $Res call({int selectedIndex, bool isLocked});
}

/// @nodoc
class _$SidebarModelCopyWithImpl<$Res, $Val extends SidebarModel>
    implements $SidebarModelCopyWith<$Res> {
  _$SidebarModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SidebarModelImplCopyWith<$Res>
    implements $SidebarModelCopyWith<$Res> {
  factory _$$SidebarModelImplCopyWith(
          _$SidebarModelImpl value, $Res Function(_$SidebarModelImpl) then) =
      __$$SidebarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, bool isLocked});
}

/// @nodoc
class __$$SidebarModelImplCopyWithImpl<$Res>
    extends _$SidebarModelCopyWithImpl<$Res, _$SidebarModelImpl>
    implements _$$SidebarModelImplCopyWith<$Res> {
  __$$SidebarModelImplCopyWithImpl(
      _$SidebarModelImpl _value, $Res Function(_$SidebarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isLocked = null,
  }) {
    return _then(_$SidebarModelImpl(
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

class _$SidebarModelImpl implements _SidebarModel {
  const _$SidebarModelImpl(
      {required this.selectedIndex, required this.isLocked});

  @override
  final int selectedIndex;
  @override
  final bool isLocked;

  @override
  String toString() {
    return 'SidebarModel(selectedIndex: $selectedIndex, isLocked: $isLocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SidebarModelImpl &&
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
  _$$SidebarModelImplCopyWith<_$SidebarModelImpl> get copyWith =>
      __$$SidebarModelImplCopyWithImpl<_$SidebarModelImpl>(this, _$identity);
}

abstract class _SidebarModel implements SidebarModel {
  const factory _SidebarModel(
      {required final int selectedIndex,
      required final bool isLocked}) = _$SidebarModelImpl;

  @override
  int get selectedIndex;
  @override
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$SidebarModelImplCopyWith<_$SidebarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
