import 'package:freezed_annotation/freezed_annotation.dart';
part 'sidebar_model.freezed.dart';

@freezed
class SidebarModelData with _$SidebarModelData {
  const factory SidebarModelData({
    required SidebarModel sidebarModel,
  }) = _SidebarModelData;
}

@freezed
class SidebarModel with _$SidebarModel {
  const factory SidebarModel({
    required int selectedIndex,
    required bool isLocked,
  }) = _SidebarModel;
}
