import 'package:flutter_application_1/model/auth_data1.dart';
import 'package:flutter_application_1/model/school_info.dart';
import 'package:flutter_application_1/repository/member_repository.dart';
import 'package:flutter_application_1/repository/school_info_repository.dart';
import 'package:flutter_application_1/swagger_model/school_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_temp_page_view_model.g.dart';

@riverpod
class RegisterTempPage extends _$RegisterTempPage {
  @override
  Future<List<SchoolInfoData>?> build() async {
    // GET CALL

    // final result = await MemberRepository().getTestInfo(page: page);
    // print('받아온 $result');

    //데이터 변환 + 비즈니스 로직

    //STATE 반환
    return [];
  }

  // void updateTitle({required String title}) {
  //   update(
  //     (state) => state?.copyWith(
  //       authInfo: state.authInfo.copyWith(title: title),
  //     ),
  //   );
  // }

  void getSchoolInfo({required String searchSchoolNm}) async {
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
}
