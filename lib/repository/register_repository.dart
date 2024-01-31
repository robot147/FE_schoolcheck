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
    required Map<String, String> body,
  }) async {
    try {
      final res = await HTTPConnector.post(
        url: API_ENDPOINT.signUp, body: body,
        // header: authToken.header,
      );

      print('res is $res');

      return true;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return false;
  }
}
