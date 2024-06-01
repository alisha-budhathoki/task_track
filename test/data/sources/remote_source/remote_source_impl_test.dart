import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:task_track/core/exceptions/exceptions.dart';
import 'package:task_track/data/sources/remote_source/remote_source_impl.dart';
import '../remote_source_test.mocks.mocks.dart';

class MockRemoteSourceImpl extends Mock implements RemoteSourceImpl {
  MockRemoteSourceImpl(Dio dio) : super();
}

void main() {
  late MockDio mockDio;
  late RemoteSourceImpl apiService;

  setUp(() {
    mockDio = MockDio();
    apiService = RemoteSourceImpl(mockDio);
  });

  group('RemoteSourceImpl Tests', () {
    test('GET request returns data', () async {
      final responsePayload = {'data': 'test'};
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: responsePayload,
              statusCode: 200));

      final result = await apiService.get('/test');

      expect(result, responsePayload);
      verify(mockDio.get('/test', queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('POST request returns data', () async {
      final requestData = {'key': 'value'};
      final responsePayload = {'data': 'test'};
      when(mockDio.post(any,
              data: anyNamed('data'),
              queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: responsePayload,
              statusCode: 200));

      final result = await apiService.post('/test', body: requestData);

      expect(result, responsePayload);
      verify(mockDio.post('/test',
              data: requestData, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('PUT request returns data', () async {
      final requestData = {'key': 'value'};
      final responsePayload = {'data': 'test'};
      when(mockDio.put(any,
              data: anyNamed('data'),
              queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: responsePayload,
              statusCode: 200));

      final result = await apiService.put('/test', body: requestData);

      expect(result, responsePayload);
      verify(mockDio.put('/test',
              data: requestData, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('DELETE request completes successfully', () async {
      when(mockDio.delete(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''), statusCode: 200));

      await apiService.delete('/test');

      verify(mockDio.delete('/test',
              queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('GET request throws UnauthorizedException', () async {
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.badResponse,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 401)));

      expect(
        () async => await apiService.get('/test'),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('POST request throws BadRequestException', () async {
      when(mockDio.post(any,
              data: anyNamed('data'),
              queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.badResponse,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 400)));

      expect(
        () async => await apiService.post('/test', body: {'key': 'value'}),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('PUT request throws InternalServerException', () async {
      when(mockDio.put(any,
              data: anyNamed('data'),
              queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.badResponse,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 500)));

      expect(
        () async => await apiService.put('/test', body: {'key': 'value'}),
        throwsA(isA<InternalServerException>()),
      );
    });

    test('DELETE request throws NotFoundException', () async {
      when(mockDio.delete(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.badResponse,
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 404)));

      expect(
        () async => await apiService.delete('/test'),
        throwsA(isA<NotFoundException>()),
      );
    });

    test('Handles DioExceptionType.connectionError', () async {
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.connectionError,
              requestOptions: RequestOptions(path: '')));

      expect(
        () async => await apiService.get('/test'),
        throwsA(isA<NetworkException>()),
      );
    });

    test('Handles DioExceptionType.badCertificate', () async {
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(DioException(
              type: DioExceptionType.badCertificate,
              requestOptions: RequestOptions(path: '')));

      expect(
        () async => await apiService.get('/test'),
        throwsA(isA<ApiException>()
            .having((e) => e.message, 'message', contains('Bad certificate'))),
      );
    });
  });
}
