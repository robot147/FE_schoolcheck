import 'package:flutter_application_1/model/sidebar_model.dart';
import 'package:flutter_application_1/model/member_data.dart';
import 'package:flutter_application_1/repository/member_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sidebar_layout_view_model.g.dart';

@Riverpod(keepAlive: true)
class SidebarLayoutPage extends _$SidebarLayoutPage {
  @override
  Future<SidebarModelData> build() async {
    final SidebarModelData result = SidebarModelData(
      sidebarModel: SidebarModel(
        selectedIndex: 0,
        isLocked: false,
      ),
    );

    //STATE 반환
    return result;
  }

  // 사이드바 인덱스 변경
  void setSelectedIndex({required int value}) {
    update(
      (state) => state.copyWith(
        sidebarModel: state.sidebarModel.copyWith(selectedIndex: value),
      ),
    );
  }

  // 사이드바 잠금 변경
  void toggleIsLocked() {
    update(
      (state) => state.copyWith(
        sidebarModel: state.sidebarModel.copyWith(
          isLocked: !state.sidebarModel.isLocked,
        ),
      ),
    );
  }
}
