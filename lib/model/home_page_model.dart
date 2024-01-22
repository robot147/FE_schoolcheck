import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_model.freezed.dart';

@freezed
class HomePageModelData with _$HomePageModelData {
  const factory HomePageModelData({
    required HomePageModel homePageModelInfo,
  }) = _HomePageModelData;
}

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    required int selectedIndex,
    required bool isLocked,
  }) = _HomePageModel;
}
