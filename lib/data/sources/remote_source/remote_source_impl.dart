import 'package:dio/dio.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';

class RemoteSourceImpl implements RemoteSource {
  RemoteSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<void> delete(String url,
      {Map<String, dynamic> queryParams = const {}}) async {
    await _dio.delete(
      url,
      queryParameters: queryParams,
    );
  }

  @override
  Future<Map<String, dynamic>> get(String path,
      {Map<String, dynamic> queryParameters = const {}}) async {
    final response = await _dio.get(path, queryParameters: queryParameters);
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> post(String url,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    final response = await _dio.post(
      url,
      data: body,
      queryParameters: queryParams,
    );
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> put(String url,
      {Map<String, dynamic> body = const {},
      Map<String, dynamic> queryParams = const {}}) async {
    final response = await _dio.put(
      url,
      data: body,
      queryParameters: queryParams,
    );
    return response.data;
  }
}
