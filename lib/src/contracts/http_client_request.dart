abstract class HttpClientRequest {
  String getMethod();
  String getUri();
  String getHeader(String key);

  Map<String, String> getHeaders();
  Map getJson();
  Map getQuery();

  int getTimeout();

  bool hasJson();
  bool hasQuery();
  bool hasHeaders();

  HttpClientRequest setMethod(String method);
  HttpClientRequest setUri(String uri);
  HttpClientRequest setHeader(String key, String value);
  HttpClientRequest setHeaders(Map<String, String> headers);
  HttpClientRequest setJson(Map json);
  HttpClientRequest setQuery(Map query);

  HttpClientRequest setTimeout(int timeout);

  HttpClientRequest ssl(bool ssl);
  bool hasSSL();
}
