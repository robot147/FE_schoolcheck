import 'package:flutter_application_1/model/member_data.dart';
import 'package:flutter_application_1/repository/member_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'member_page_view_model.g.dart';

@riverpod
class MemberPage extends _$MemberPage {
  @override
  Future<MemberData?> build(String memberId) async {
    // GET CALL
    final result = await MemberRepository().getMemberInfo(memberId: memberId);

    //데이터 변환
    //...//

    //STATE 반환
    return const MemberData(memberInfo: Member(name: '스쿨체크', age: 10));
  }

  void updateName({required String name}) {
    update((state) =>
        state?.copyWith(memberInfo: state.memberInfo.copyWith(name: name)));
  }
}
