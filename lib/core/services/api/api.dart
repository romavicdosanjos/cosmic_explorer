import 'package:http/http.dart' as http;

abstract class Api {
  Future<http.Response> getEndpoint(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
