import 'package:cosmic_explorer/core/services/api/api.dart';
import 'package:http/http.dart' as http;

class ApiImpl implements Api {
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  ApiImpl({required this.baseUrl, this.defaultHeaders = const {}});

  @override
  Future<http.Response> getEndpoint(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse('$baseUrl$path').replace(
      queryParameters: queryParameters?.map(
        (k, v) => MapEntry(k, v.toString()),
      ),
    );
    return await http.get(uri, headers: {...defaultHeaders, ...?headers});
  }
}
