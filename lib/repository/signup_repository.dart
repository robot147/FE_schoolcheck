import 'package:flutter_application_1/model/member_data.dart';
import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class SignupRepository {
  SignupRepository._privateConstructor();
  static final SignupRepository _instance =
      SignupRepository._privateConstructor();
  factory SignupRepository() {
    return _instance;
  }

  //Test
  Future<void> signup({
    required SignupData data,
  }) async {
    try {
      final res = await HTTPConnector.post(
        url: API_ENDPOINT.exsignup,
        body: {
          'title' : data.email,
          'body' : data.pwd,
          'userId' : 1
        }
      );

      print(res);

    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return null;
  }


}
