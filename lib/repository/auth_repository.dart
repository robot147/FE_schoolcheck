import 'package:flutter_application_1/swagger_model/test_server_model.dart';
import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class AuthRepository {
  AuthRepository._privateConstructor();
  static final AuthRepository _instance = AuthRepository._privateConstructor();
  factory AuthRepository() {
    return _instance;
  }

  //Test
  Future<TestServerModel?> getTestInfo({
    required int page,
  }) async {
    try {
      final res = await HTTPConnector.get(
        url: API_ENDPOINT.testPing,
      );

      //Map to DartClassModel
      final out = TestServerModel.fromJson(
        res as Map<String, dynamic>,
      );
      return out;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return null;
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

  Future<dynamic> getRefreshToken(Map<String, String> params) async {
    try {
      final res = await HTTPConnector.get(
          url: API_ENDPOINT.refreshToken, params: params);

      return res;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
  }
}
