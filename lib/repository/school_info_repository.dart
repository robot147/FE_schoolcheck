import 'package:dio/dio.dart';
import 'package:flutter_application_1/swagger_model/school_info_model.dart';
import 'package:flutter_application_1/swagger_model/test_server_model.dart';
import 'package:flutter_application_1/networks/api.dart';
import 'package:flutter_application_1/networks/http_connector.dart';
import 'package:flutter_application_1/utils/logger.dart';

class SchoolInfoRepository {
  SchoolInfoRepository._privateConstructor();
  static final SchoolInfoRepository _instance =
      SchoolInfoRepository._privateConstructor();
  factory SchoolInfoRepository() {
    return _instance;
  }

  Future<List<SchoolInfoModel>> getSchoolInfo(
      {String? searchSchoolNm, required Map<String, String> params}) async {
    List<SchoolInfoModel> schoolInfoList = [];
    try {
      print('API called, searchSchoolNm is $searchSchoolNm');
      final res = await HTTPConnector.get(
          url: API_ENDPOINT.searchSchool, params: params);

      print(res);

      final List<dynamic> contentList = res?['data'];
      schoolInfoList = contentList
          .map((content) => SchoolInfoModel.fromJson(content))
          .toList();

      //Map to DartClassModel
      final out = schoolInfoList;

      print(out);
      return out;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return [];
  }
}
