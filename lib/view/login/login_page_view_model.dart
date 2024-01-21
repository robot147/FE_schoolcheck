import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/swagger_model/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/user_data.dart';
import '../../repository/user_repository.dart';
import '../../repository/member_repository.dart';

part 'login_page_view_model.g.dart';

@riverpod
class LoginPage extends _$LoginPage {
  // 왜 굳이 이렇게 상수 선언하는지 모르겠음
  static const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';

  static const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';

  final storage = FlutterSecureStorage();

  @override
  Future<UserData?> build({required int page}) async {
    // GET CALL

    // final result = await MemberRepository().getTestInfo(page: page);

    //데이터 변환 + 비즈니스 로직

    //STATE 반환
    return UserData(
      userInfo: User(
        id: '',
        password: '',
        refreshToken: '',
        accessToken: '',
      ),
    );
  }

  // 유저 데이터 셋
  Future<void> setUserId({String? id}) async {
    update(
      (state) => state?.copyWith(
        userInfo: state.userInfo.copyWith(id: id ?? id),
      ),
    );
  }

  // 유저 데이터 셋
  Future<void> setUserPassword({String? password}) async {
    update(
      (state) => state?.copyWith(
        userInfo: state.userInfo.copyWith(password: password ?? password),
      ),
    );
  }

  // 로그인 시도 및 storage에 토큰 저장
  Future<void> login({required User user}) async {
    // print(state.data);

    final rawString = '${user.id}:${user.password}';

    print('userid is ${user.id}');
    print('userpassword is ${user.password}');
    // 아이디, 비밀번호로 토큰 발급
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String token = stringToBase64.encode(rawString);

    print('test001');
    print(token);
    final UserModel userModel = await UserRepository().login(token: token);

    print('res is $userModel');

    // 서버에서 받은 refreshToken과 accessToken을 저장
    final refreshToken = userModel.refreshToken;
    final accessToken = userModel.accessToken;

    storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);
    storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);
  }
}
