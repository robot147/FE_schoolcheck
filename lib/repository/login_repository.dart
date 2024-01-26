import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class LoginRepository {
  LoginRepository._privateConstructor();
  static final LoginRepository _instance =
      LoginRepository._privateConstructor();
  factory LoginRepository() {
    return _instance;
  }

  /// 로그인 POST

  Future<bool> signIn({
    required Map<String, String> body, //TODO 타입변경
  }) async {
    try {
      final res = await HTTPConnector.post(
        url: API_ENDPOINT.signIn, body: body,
        // header: authToken.header,
      );

      // final out = MemberActiveMemberActiveObjModel.fromJson(
      //   res?['data'] as Map<String, dynamic>,
      // );
      // return out;
      return true;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return false;
  }
}
