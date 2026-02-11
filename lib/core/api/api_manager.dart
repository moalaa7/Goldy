import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import 'api_constatnts.dart';

@singleton
class ApiManager {
  Dio dio = Dio();

  Future<Response> getData(
      {required String endPoint,
      Map<String, dynamic>? queryParameters,
      Options? options,
      Map<String, dynamic>? headers}) {
    return dio.get(ApiConstants.baseUrl + endPoint,
        queryParameters: queryParameters,
        options: Options(headers: headers, validateStatus: (status) => true));
  }

}
