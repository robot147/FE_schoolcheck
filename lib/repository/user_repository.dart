import 'package:dio/dio.dart';
import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';

import '../swagger_model/user_model.dart';

class UserRepository {
  UserRepository._privateConstructor();
  static final UserRepository _instance = UserRepository._privateConstructor();
  factory UserRepository() {
    return _instance;
  }
  final dio = Dio();

  // 서버에 로그인 요청
  Future<UserModel> login({required String token}) async {
    try {
      // final res = await HTTPConnector.post(
      //     url: API_ENDPOINT.userPage,
      //     header: {'authorization': 'Basic $token'}) as Response;

      // final res = await HTTPConnector.post(
      //     url: API_ENDPOINT.testLogin,
      //     header: {'authorization': 'Basic $token'}) as Response;

      print(token);
      print('test002');
      final res = await dio.post(
        'http://10.0.2.2:3000/auth/login',
        options: Options(headers: {
          'authorization': 'Basic $token',
        }),
      );

      print('test003');

      print(res.data['refreshToken']);
      print(res.data['accessToken']);

      final data = UserModel(
        accessToken: res.data['accessToken'],
        refreshToken: res.data['refreshToken'],
      );

      return data;
    } catch (e) {
      throw ('error $e');
    }
  }

  // 로그아웃
  Future<void> logout() async {}

  //
  Future<Response> getUser() async {
    try {
      final res =
          await HTTPConnector.get(url: API_ENDPOINT.userPage) as Response;

      return res;
    } catch (e) {
      throw (e);
    }
  }
}
