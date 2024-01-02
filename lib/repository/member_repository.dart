import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class MemberRepository {
  MemberRepository._privateConstructor();
  static final MemberRepository _instance =
      MemberRepository._privateConstructor();
  factory MemberRepository() {
    return _instance;
  }

  /// 회원정보 GET
  /// Return 타입은 서버 스웨거 가져다 씀
  Future<dynamic> getMemberInfo({
    required String memberId,
  }) async {
    try {
      final res = await HTTPConnector.get(
        url: API_ENDPOINT.memberInfo,
        urlArg: {'memberId': memberId},
        // header: authToken.header,
      );

      // final out = MemberActiveMemberActiveObjModel.fromJson(
      //   res?['data'] as Map<String, dynamic>,
      // );
      // return out;
      return res;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return null;
  }
}
