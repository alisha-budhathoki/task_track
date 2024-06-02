import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({required this.bearerToken});

  final String bearerToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('Request[${options.method}]=> PATH: ${options.path}');
    options.headers['Authorization'] = 'Bearer $bearerToken';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('Response[${response.statusCode}]=> PATH: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('Error[${err.response?.statusCode}]=> PATH: ${err.message}');
    super.onError(err, handler);
  }
}
