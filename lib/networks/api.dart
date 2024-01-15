import 'package:path_to_regexp/path_to_regexp.dart';

const BASE_URL = 'https://jsonplaceholder.typicode.com';

// 로그인 테스트 서버
const BASE_URL1 = 'http://10.0.2.2:3000';

enum API_ENDPOINT {
  testPage('/posts/:page'),
  userPage('user/login'),
  signUpPage('user/signUp'),
  memberInfo('member/:memberId'),
  // 로그인 테스트
  testLogin('auth/login');

  const API_ENDPOINT(this._url);
  final String _url;

  String value(Map<String, String> arg) =>
      BASE_URL1 + pathToFunction(_url)(arg);
}
