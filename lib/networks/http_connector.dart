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

  static Options _optionMaker(Map<String, dynamic> header) => Options(
        headers: {..._baseheader, ...header},
        validateStatus: (status) => true,
        requestEncoder: (request, options) => _encoder.convert(request),
        responseDecoder: (responseBytes, options, responseBody) =>
            _decoder.convert(responseBytes),

        /// 보내는 타임아웃
        sendTimeout: const Duration(seconds: 10),
        //받는 타임아웃
        receiveTimeout: const Duration(seconds: 10),
      );

  static Future<Map<String, dynamic>?> post({
    required API_ENDPOINT url,
    Map<String, String> urlArg = const {},
    Map<String, String> header = const {},
    Map<String, dynamic> body = const {},
  }) async {
    var response = await _dio.post<Map<String, dynamic>>(url.value(urlArg),
        data: body, options: _optionMaker(header));

    if (response.statusCode == 401 || response.statusCode == 403) {
      //
    }

    if ((response.statusCode ?? 999) > 299) {
      throw HttpException(
        statusCode: response.statusCode ?? 999,
        method: 'POST',
        url: url.value(urlArg),
        message: response.data?['msg'],
        requestParam: body.toString(),
        responseRawData: response,
      );
    }

    return response.data;
  }
}
