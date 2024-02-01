import 'package:flutter_application_1/model/management_data.dart';
import 'package:flutter_application_1/model/sidebar_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'management_page_view_model.g.dart';

@riverpod
class ManagementPage extends _$ManagementPage {
  @override
  Future<ManagementData> build() async {
    final ManagementData result = EmptyManagementData();

    //STATE 반환
    return result;
  }

  // 학반 관리 데이터로 세팅하기
  void setClassroomManagementData() {
    // 학반 관리 데이터 API로 불러와서 세팅
    // 후에 해당 데이터 state에 있는 ClassManagement 클래스에 넣어주기
    update(
        (state) => ClassManagementData(classManagementInfo: ClassManagement()));
  }

  // 시간표 관리 데이터로 세팅하기
  void setScheduleManagementData() {
    // 시간표 관리 데이터 API로 불러와서 세팅
    // 후에 해당 데이터 state에 있는 ScheduleManagement 클래스에 넣어주기
    update((state) =>
        ScheduleManagementData(scheduleManagementInfo: ScheduleManagement()));
  }
}
