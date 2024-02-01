import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/repository/school_info_repository.dart';
import 'package:flutter_application_1/swagger_model/school_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_find_school_modal_view_model.g.dart';

@riverpod
class RegisterFindSchoolModal extends _$RegisterFindSchoolModal {
  @override
  SchoolInfoData build() {
    //STATE 반환
    return SchoolInfoData(schoolInfo: [], searchName: null);
  }

  // 학교 찾기
  Future<void> searchSchoolInfo() async {
    final searchSchoolNm = state.searchName;
    print('searchSchoolName is $searchSchoolNm');
    final params = {'query': state.searchName ?? ''};
    final results = await SchoolInfoRepository().getSchoolInfo(
      searchSchoolNm: searchSchoolNm ?? '',
      params: params,
    );

    List<SchoolInfo> schoolInfo = [];

    for (SchoolInfoModel result in results) {
      // final schoolInfo = result.toJson;

      schoolInfo.add(
        SchoolInfo(
          name: result.name,
          address: result.address,
          id: result.id,
        ),
      );
    }
    state = state.copyWith(schoolInfo: schoolInfo);
  }

  void setter({String? searchName}) {
    print('setter has called. searchName is $searchName');

    state = state.copyWith(searchName: searchName ?? searchName);
  }

  // 학교 리스트에서 학교 선택
  Future<void> setSchoolChecked({required SchoolInfo data}) async {
    print('setSchoolChecked called');

    final infoList = List<SchoolInfo>.from(state.schoolInfo);

    for (int i = 0; i < infoList.length; i++) {
      if (infoList[i].id == data.id) {
        infoList[i] = data.copyWith(isSelected: true);
      } else {
        infoList[i] = infoList[i].copyWith(isSelected: false);
      }
    }

    state = state.copyWith(schoolInfo: infoList);
  }
}
