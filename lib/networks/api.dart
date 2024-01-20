import 'package:path_to_regexp/path_to_regexp.dart';

const BASE_URL = 'http://baranewsong.synology.me';

enum API_ENDPOINT {
  testPing('/ping'),
  signIn('/v1.0/users/sign-in'),
  memberInfo('member/:memberId');

  const API_ENDPOINT(this._url);
  final String _url;

  String value(Map<String, String> arg) => BASE_URL + pathToFunction(_url)(arg);
}
