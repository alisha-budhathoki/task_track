import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_track/core/routing/routing_index.dart';
import 'package:task_track/data/sources/remote_source/interceptors/api_interceptor.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';
import 'package:task_track/data/sources/remote_source/remote_source_impl.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());

  const String bearerToken = '84e272708032b1a385ffdbaa4d8b4010e51b33b3';

  Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.todoist.com/rest/v2/sections',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  ))
    ..interceptors.add(ApiInterceptor(bearerToken: bearerToken));

  locator.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl(dio));
}
