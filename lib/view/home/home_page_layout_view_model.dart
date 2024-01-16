import 'package:flutter_application_1/model/home_page_model.dart';
import 'package:flutter_application_1/model/member_data.dart';
import 'package:flutter_application_1/repository/member_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_layout_view_model.g.dart';

@riverpod
class HomePageLayoutPage extends _$HomePageLayoutPage {
  @override
  Future<HomePageModelData> build() async {
    final HomePageModelData result = HomePageModelData(
      homePageModelInfo: HomePageModel(
        selectedIndex: 0,
        isLocked: false,
      ),
    );

    //데이터 변환 + 비즈니스 로직

    //STATE 반환
    return result;
  }

  void setSelectedIndex({required int value}) {
    update(
      (state) => state.copyWith(
        homePageModelInfo:
            state.homePageModelInfo.copyWith(selectedIndex: value),
      ),
    );
  }

  void toggleIsLocked() {
    update(
      (state) => state.copyWith(
        homePageModelInfo: state.homePageModelInfo.copyWith(
          isLocked: !state.homePageModelInfo.isLocked,
        ),
      ),
    );
  }
}
