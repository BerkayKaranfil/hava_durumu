//import 'dart:html';

import 'package:dio/dio.dart';

class logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST ${options.method} => ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("RESPONSE ${response.statusCode} => ${response.requestOptions.path}");
    switch (response.statusCode) {
      case 200:
        print("Giriş başarılı");
        break;
      default:
        print("Başarısız");
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
