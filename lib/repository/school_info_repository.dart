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

  final dio = Dio();

  // 학교 정보 가져오기
  Future<List<SchoolInfoModel?>?> getSchoolInfo(
      {required String searchSchoolNm}) async {
    List<SchoolInfoModel> schoolInfoList = [];
    try {
      print('API called');
      // final res = await HTTPConnector.get(
      //   url: API_ENDPOINT.testPing,
      // );
      searchSchoolNm = '거제';
      // HTTPConnector.get의 url이 API_ENDPOINT만을 받아서 일단 하드코딩 했어요
      final response = await dio.get(
        'https://www.career.go.kr/cnet/openapi/getOpenApi',
        queryParameters: {
          'apiKey': 'e1457f6964155c5246c7108d399feb38',
          'svcType': 'api',
          'svcCode': 'SCHOOL',
          'contentType': 'json',
          'gubun': 'elem_list', // 초, 중, 고, 대학 등 학교 구분
          'thisPage': '1',
          'perPage': '20',
          'searchSchulNm': searchSchoolNm,
        },
      );

      // 서버 통신이 정상일 때
      if (response.statusCode == 200) {
        final List<dynamic> contentList =
            response.data['dataSearch']['content'];

        // SchoolInfo 모델로 변환
        schoolInfoList = contentList
            .map((content) => SchoolInfoModel.fromJson(content))
            .toList();
      } else {
        print('Request failed with status: ${response.statusCode}');
      }

      //Map to DartClassModel
      final out = schoolInfoList;

      // 해당 데이터 보기
      for (SchoolInfoModel contents in out) {
        print(contents.toJson());
      }
      return out;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return null;
  }
}
