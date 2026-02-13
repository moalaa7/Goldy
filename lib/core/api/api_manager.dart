import 'package:dio/dio.dart';

import 'api_constatnts.dart';

class ApiManager {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    );
  }

 static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,

  })

  async{
    final res =await dio.get(
      endPoint,queryParameters: queryParameters
    );
    return res;

  }
  // {
  //   return dio.get(
  //     ApiConstants.baseUrl + endPoint,
  //     queryParameters: queryParameters,
  //     options: Options(headers: headers, validateStatus: (status) => true),
  //   );
  // }
}
