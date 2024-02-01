import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/networks/api.dart';

import 'package:package_info_plus/package_info_plus.dart';

class HttpException implements Exception {
  final int statusCode;
  final String method;
  final String url;
  final String requestParam;
  final Response responseRawData;
  final String? message;

  HttpException({
    required this.statusCode,
    required this.method,
    required this.url,
    required this.requestParam,
    required this.responseRawData,
    this.message,
  });

  @override
  String toString() {
    return '''
    status: $statusCode
    url: $url
    method: $method
    requestParam: $requestParam
    message: $message''';
  }
}

/// http 접속을 위해 사용
class HTTPConnector {
  static final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  static final _dio = Dio();
  static const _encoder = Utf8Encoder();
  static const _decoder = Utf8Decoder();
  static final Map<String, dynamic> _baseheader = {};

  //http 초기 세팅
  static Future init() async {
    String device = 'error';
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isAndroid) {
      device = (await _deviceInfoPlugin.androidInfo).device;
    } else if (Platform.isIOS) {
      device = (await _deviceInfoPlugin.iosInfo).localizedModel;
    }
    _baseheader['platform'] = device;

    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    _baseheader['appname'] = packageName;
    _baseheader['version'] = version;
  }

  //옵션세팅
  static Options _optionMaker(Map<String, dynamic> header) => Options(
        headers: {..._baseheader, ...header},
        //TODO 백엔드 상태코드 확인하고 필요시 커스텀
        validateStatus: (status) => true,
        //JSON 이외 요청 처리가 필요하면 사용해야함. (JSON만 처리할때는 굳이 필요없음)
        requestEncoder: (request, options) => _encoder.convert(request),
        responseDecoder: (responseBytes, options, responseBody) =>
            _decoder.convert(responseBytes),
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      );

  //GET
  static Future<Map<String, dynamic>?> get({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, String> params = const {},
  }) async {
    var res = await _dio.get<Map<String, dynamic>>(
      url.value(urlArg),
      queryParameters: params,
      options: _optionMaker(header),
    );
    //TODO 인증 구현후 수정필요

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.get<Map<String, dynamic>>(url.value(urlArg),
    //         queryParameters: params,
    //         options: _optionMaker(header, refreshedToken));
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'GET',
        url: url.value(urlArg),
        message: res.data?['msg'],
        requestParam: params.toString(),
        responseRawData: res,
      );
    }
    return res.data;
  }

  //POST
  static Future<Map<String, dynamic>?> post({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
  }) async {
    var res = await _dio.post<Map<String, dynamic>>(
      url.value(urlArg),
      data: body,
      options: _optionMaker(header),
    );

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.post<Map<String, dynamic>>(
    //       url.value(urlArg),
    //       data: body,
    //       options: _optionMaker(header, refreshedToken),
    //     );
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'POST',
        url: url.value(urlArg),
        message: res.data?['msg'],
        requestParam: body.toString(),
        responseRawData: res,
      );
    }

    if (res.statusCode == 201 || res.statusCode == 204) {
      return {"success": true};
    } else {
      return res.data;
    }
  }

  //PATCH
  static Future<Map<String, dynamic>?> patch({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
    Map<String, String> params = const {},
  }) async {
    var res = await _dio.patch<Map<String, dynamic>>(
      url.value(urlArg),
      data: body,
      queryParameters: params,
      options: _optionMaker(header),
    );

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.patch<Map<String, dynamic>>(url.value(urlArg),
    //         data: body, queryParameters: params, options: _optionMaker(header));
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'PATCH',
        url: url.value(urlArg),
        message: res.data?['msg'],
        requestParam: body.toString(),
        responseRawData: res,
      );
    }
    return res.data;
  }

  //PUT
  static Future<Map<String, dynamic>?> put({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
  }) async {
    var res = await _dio.put<Map<String, dynamic>>(
      url.value(urlArg),
      data: body,
      options: _optionMaker(header),
    );

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.put<Map<String, dynamic>>(
    //       url.value(urlArg),
    //       data: body,
    //       options: _optionMaker(header, refreshedToken),
    //     );
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'PUT',
        url: url.value(urlArg),
        message: res.data?['msg'],
        requestParam: body.toString(),
        responseRawData: res,
      );
    }
    return res.data;
  }

  //DELETE
  static Future<Map<String, dynamic>?> delete({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
  }) async {
    var res = await _dio.delete(
      url.value(urlArg),
      data: body,
      options: _optionMaker(header),
    );

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.delete(
    //       url.value(urlArg),
    //       data: body,
    //       options: _optionMaker(header, auth),
    //     );
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'DELETE',
        url: url.value(urlArg),
        message: res.data['msg'],
        requestParam: body.toString(),
        responseRawData: res,
      );
    }
    return res.data;
  }

  //POSTwithFormData
  static Future<Map<String, dynamic>?> postWithFormData({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
  }) async {
    final form = FormData.fromMap(body);

    var res = await _dio.post<Map<String, dynamic>>(
      url.value(urlArg),
      data: form,
      options: _optionMaker(header),
    );

    // if (res.statusCode == 401 || res.statusCode == 403) {
    //   final refreshedToken =
    //       await AuthRepository().refreshToken(expiredAuth: auth);
    //   if (refreshedToken == null) {
    //     AuthRepository().removeTokenFromDB();
    //   } else {
    //     res = await _dio.post<Map<String, dynamic>>(
    //       url.value(urlArg),
    //       data: form,
    //       options: _optionMaker(header, refreshedToken),
    //     );
    //   }
    // }

    if ((res.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: res.statusCode ?? 999,
        method: 'POST_form_data',
        url: url.value(urlArg),
        message: res.data?['msg'],
        requestParam: body.toString(),
        responseRawData: res,
      );
    }

    return res.data;
  }
}
