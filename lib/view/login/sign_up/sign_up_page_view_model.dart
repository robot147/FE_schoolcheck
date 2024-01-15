import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/user_data.dart';
import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_page_view_model.g.dart';

@riverpod
class SignUpPage extends _$SignUpPage {
  @override
  Future<UserData?> build({required int page}) async {
    // GET CALL

    //데이터 변환 + 비즈니스 로직

    //STATE 반환
    return UserData(
      userInfo: User(),
    );
  }

  Future<Response> signUp({required UserData userData}) async {
    try {
      final res = await HTTPConnector.post(
        url: API_ENDPOINT.signUpPage,
      ) as Response;

      return res;
    } catch (e) {
      throw (e);
    }
  }
}
