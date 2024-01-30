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

  // 학교 정보 가져오기 원형
  Future<List<SchoolInfoModel>> getSchoolInfo(
      {String? searchSchoolNm, required Map<String, String> params}) async {
    List<SchoolInfoModel> schoolInfoList = [];
    try {
      print('API called, searchSchoolNm is $searchSchoolNm');
      // final res = await HTTPConnector.get(
      //     url: API_ENDPOINT.searchSchool, params: params);

      // HTTPConnector.get의 url이 API_ENDPOINT만을 받아서 일단 하드코딩 했어요
      final response = await dio.get(
        'https://www.career.go.kr/cnet/openapi/getOpenApi',
        queryParameters: {
          'apiKey':
              'e1457f6964155c5246c7108d399feb38', // 따로 전역변수로 빼서 관리하는 방법도 가능(env 사용 고려)
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

      return out;
    } on HttpException catch (e) {
      logger.e(e);
    } on Exception catch (e) {
      logger.e(e);
    }
    return [];
  }
}
  // Future<List<SchoolInfoModel>> getSchoolInfo(
  //     {String? searchSchoolNm, required Map<String, String> params}) async {
  //   List<SchoolInfoModel> schoolInfoList = [];
  //   try {
  //     print('API called, searchSchoolNm is $searchSchoolNm');
  //     // final res = await HTTPConnector.get(
  //     //     url: API_ENDPOINT.searchSchool, params: params);

  //     // HTTPConnector의 형식은 param을 Map으로 보내는데,
  //     // 현재 구현된 서버는 String으로 보내서 일단 하드코딩함
  //     final resp = await dio.get(
  //       'http://baranewsong.synology.me/v1.0/accounts/sign-up/schools?query=$searchSchoolNm',
  //     );
  //     if (resp.statusCode == 200) {
  //       final List<dynamic> contentList = resp.data['data'];
  //       schoolInfoList = contentList
  //           .map((content) => SchoolInfoModel.fromJson(content))
  //           .toList();
  //     }

  //     //Map to DartClassModel
  //     final out = schoolInfoList;

  //     return out;
  //   } on HttpException catch (e) {
  //     logger.e(e);
  //   } on Exception catch (e) {
  //     logger.e(e);
  //   }
  //   return [];
  // }
