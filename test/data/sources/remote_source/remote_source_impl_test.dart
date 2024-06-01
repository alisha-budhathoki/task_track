import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';
import 'package:task_track/data/sources/remote_source/remote_source_impl.dart';
import '../remote_source_test.mocks.mocks.dart';

class MockRemoteSourceImpl extends Mock implements RemoteSourceImpl {
  MockRemoteSourceImpl(Dio dio) : super();
}

void main() {
  late MockDio mockDio;
  late RemoteSource remoteSource;

  setUp(() {
    mockDio = MockDio();
    remoteSource = RemoteSourceImpl(mockDio);
  });

  group('ApiService Tests', () {
    test('GET request returns data', () async {
      final responsePayload = {'data': 'test'};
      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: responsePayload,
              statusCode: 200));

      final result = await remoteSource.get('/test');

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

      final result = await remoteSource.post('/test', body: requestData);

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

      final result = await remoteSource.put('/test', body: requestData);

      expect(result, responsePayload);
      verify(mockDio.put('/test',
              data: requestData, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('DELETE request completes successfully', () async {
      when(mockDio.delete(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''), statusCode: 200));

      await remoteSource.delete('/test');

      verify(mockDio.delete('/test',
              queryParameters: anyNamed('queryParameters')))
          .called(1);
    });
  });
}
