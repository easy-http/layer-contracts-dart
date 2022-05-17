import 'http_client_request.dart';
import 'http_client_response.dart';

abstract class HttpClientAdapter {
  Future<HttpClientResponse> request(HttpClientRequest request);
}
