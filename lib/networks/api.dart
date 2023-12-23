import 'package:path_to_regexp/path_to_regexp.dart';

const BASE_URL = 'https://localhost:3000/';

enum API_ENDPOINT {
  memberInfo('member/:memberId');

  const API_ENDPOINT(this._url);
  final String _url;

  String value(Map<String, String> arg) => BASE_URL + pathToFunction(_url)(arg);
}
