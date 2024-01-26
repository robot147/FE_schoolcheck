import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/repository/school_info_repository.dart';
import 'package:flutter_application_1/swagger_model/school_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_find_school_modal_view_model.g.dart';

@riverpod
class RegisterFindSchoolModal extends _$RegisterFindSchoolModal {
  @override
  Future<List<SchoolInfoData>?> build() async {
    //STATE 반환
    return [];
  }

  Future<void> getSchoolInfo({required String searchSchoolNm}) async {
    final results = await SchoolInfoRepository()
        .getSchoolInfo(searchSchoolNm: searchSchoolNm);

    List<SchoolInfoData> tempList = [];

    for (SchoolInfoModel result in results) {
      tempList.add(
        SchoolInfoData(
          schoolInfo:
              SchoolInfo(adres: result.adres, schoolName: result.schoolName),
        ),
      );
    }

    update(
      (state) => tempList,
    );
  }

  // 학교 리스트에서 학교 선택
  Future<void> setSchoolChecked({required SchoolInfoData data}) async {
    print('setSchoolChecked called');
    update(
      (state) {
        for (int i = 0; i < state!.length; i++) {
          if (data.schoolInfo == state[i].schoolInfo) {
            state[i] = state[i].copyWith(
              schoolInfo: state[i].schoolInfo.copyWith(
                    isSelected: true,
                  ),
            );
          } else {
            state[i] = state[i].copyWith(
              schoolInfo: state[i].schoolInfo.copyWith(
                    isSelected: false,
                  ),
            );
          }
        }
        return state;
      },
    );
  }
}
