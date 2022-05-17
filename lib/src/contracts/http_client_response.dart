abstract class HttpClientResponse {
  int getStatusCode();
  Map getHeaders();
  String getBody();
  dynamic parseJson();
}
