import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class RegisterRepository {
  RegisterRepository._privateConstructor();
  static final RegisterRepository _instance =
      RegisterRepository._privateConstructor();
  factory RegisterRepository() {
    return _instance;
  }

  /// 회원가입 POST

  Future<bool> signUp({
    required Map<String, dynamic> body, //TODO 타입변경
  }) async {
    try {
      final res = await HTTPConnector.post(
        url: API_ENDPOINT.signUp,
        body: body,
      );

      return res?["success"] as bool;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return false;
  }

  Future<bool> emailCheck(
      {required Map<String, dynamic> body,
      required Map<String, String> params}) async {
    try {
      final res =
          await HTTPConnector.get(url: API_ENDPOINT.emailCheck, params: params);

      return res?["data"]["available"] as bool;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return false;
  }
}
