import 'package:dio/dio.dart';
import 'package:task_track/core/exceptions/exceptions.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';

class RemoteSourceImpl implements RemoteSource {
  final Dio _dio;

  RemoteSourceImpl(this._dio);

  @override
  Future<void> delete(String url,
      {Map<String, dynamic> queryParams = const {}}) async {
    try {
      await _dio.delete(url, queryParameters: queryParams);
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<Map<String, dynamic>> get(String path,
      {Map<String, dynamic> queryParameters = const {}}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      _handleDioError(e);
    }
    throw ApiException(
        'Unexpected error occurred'); // Ensure non-nullable return
  }

  @override
  Future<Map<String, dynamic>> post(String url,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    try {
      final response =
          await _dio.post(url, data: body, queryParameters: queryParams);
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      _handleDioError(e);
    }
    throw ApiException(
        'Unexpected error occurred'); // Ensure non-nullable return
  }

  @override
  Future<Map<String, dynamic>> put(String url,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    try {
      final response =
          await _dio.put(url, data: body, queryParameters: queryParams);
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      _handleDioError(e);
    }
    throw ApiException(
        'Unexpected error occurred'); // Ensure non-nullable return
  }

  void _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        throw ApiException('Request to API was cancelled');
      case DioExceptionType.connectionTimeout:
        throw NetworkException('Connection timeout with API');
      case DioExceptionType.sendTimeout:
        throw NetworkException('Send timeout with API');
      case DioExceptionType.receiveTimeout:
        throw NetworkException('Receive timeout with API');
      case DioExceptionType.badResponse:
        _handleErrorResponse(error.response);
        break;
      case DioExceptionType.badCertificate:
        throw ApiException('Bad certificate');
      case DioExceptionType.connectionError:
        throw NetworkException('Connection error with API');
      case DioExceptionType.unknown:
        throw NetworkException('Unexpected error occurred: ${error.message}');
    }
    throw ApiException(
        'Unhandled DioExceptionType: ${error.type}'); // Ensure exhaustive handling
  }

  void _handleErrorResponse(Response? response) {
    if (response == null) {
      throw ApiException('No response from API');
    }
    switch (response.statusCode) {
      case 400:
        throw BadRequestException('Bad request: ${response.data}');
      case 401:
        throw UnauthorizedException('Unauthorized: ${response.data}');
      case 404:
        throw NotFoundException('Not found: ${response.data}');
      case 500:
        throw InternalServerException(
            'Internal server error: ${response.data}');
      default:
        throw ApiException(
            'Received invalid status code: ${response.statusCode}');
    }
  }
}
