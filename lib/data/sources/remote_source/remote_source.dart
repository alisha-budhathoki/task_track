abstract class RemoteSource {
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic> queryParams = const {},
  });

  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic> body = const {},
    Map<String, dynamic> queryParams = const {},
  });

  Future<void> delete(
    String url, {
    Map<String, dynamic> queryParams = const {},
  });
}
