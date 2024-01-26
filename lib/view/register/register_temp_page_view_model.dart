import 'package:flutter_application_1/model/auth_data1.dart';
import 'package:flutter_application_1/repository/school_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_temp_page_view_model.g.dart';

@riverpod
class RegisterTempPage extends _$RegisterTempPage {
  @override
  Future<AuthData?> build() async {
    // GET CALL

    // final result = await MemberRepository().getTestInfo(page: page);
    // print('받아온 $result');

    //데이터 변환 + 비즈니스 로직

    //STATE 반환
    return const AuthData(
      authInfo: Auth(
        id: '',
        password: '',
      ),
    );
  }

  List<String> menuList = [];

  // void updateTitle({required String title}) {
  //   update(
  //     (state) => state?.copyWith(
  //       authInfo: state.authInfo.copyWith(title: title),
  //     ),
  //   );
  // }

  void getSchoolInfo({required String searchSchoolNm}) async {
    await SchoolInfoRepository().getSchoolInfo(searchSchoolNm: searchSchoolNm);
  }

  // String? validationCheck(){
  //   if(state.value.id == null || state.value.id ==''){
  //     return '아이디를 입력해주세요.'
  //   }else if(state.value.pw == null){
  //     return '비밀번호를 입력해주세요.'
  //   }else{
  //     return null;
  //   }
  // }
}
