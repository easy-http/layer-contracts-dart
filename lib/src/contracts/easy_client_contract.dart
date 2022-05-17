import 'http_client_request.dart';
import 'http_client_response.dart';

abstract class EasyClientContract {
  HttpClientRequest getRequest();
  Future<HttpClientResponse> call(String method, String uri);
  HttpClientRequest prepareRequest(String method, String uri);
  EasyClientContract withHandler(Function handler);
  Future<HttpClientResponse> execute();
}
