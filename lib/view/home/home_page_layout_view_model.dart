// import 'package:flutter_application_1/model/member_data.dart';
// import 'package:flutter_application_1/repository/member_repository.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'home_page_layout_view_model.g.dart';

// @riverpod
// class HomePageLayoutPage extends _$HomePageLayoutPage {
//   @override
//   Future<MemberData?> build({required int page}) async {
//     // GET CALL

//     final result = await MemberRepository().getTestInfo(page: page);

//     //데이터 변환 + 비즈니스 로직

//     //STATE 반환
//     return MemberData(
//       memberInfo: Member(
//         title: result?.title ?? '',
//         body: result?.body ?? '',
//       ),
//     );
//   }

//   void updateTitle({required String title}) {
//     update(
//       (state) => state?.copyWith(
//         memberInfo: state.memberInfo.copyWith(title: title),
//       ),
//     );
//   }
// }
