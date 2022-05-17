import 'contracts/easy_client_contract.dart';
import 'contracts/http_client_adapter.dart';
import 'contracts/http_client_request.dart';
import 'contracts/http_client_response.dart';

abstract class AbstractClient implements EasyClientContract {
  late HttpClientRequest request;

  late HttpClientAdapter? _adapter;

  Function? handler;

  @override
  HttpClientRequest getRequest() {
    return request;
  }

  @override
  Future<HttpClientResponse> call(String method, String uri) async {
    var request = buildRequest(method, uri);
    return _getAdapter().request(request);
  }

  @override
  HttpClientRequest prepareRequest(String method, String uri) {
    request = buildRequest(method, uri);

    return request;
  }

  @override
  EasyClientContract withHandler(Function handler) {
    this.handler = handler;

    return this;
  }

  @override
  Future<HttpClientResponse> execute() async {
    return _getAdapter().request(request);
  }

  HttpClientAdapter _getAdapter() {
    // @todo: cache this adapter
    var adapter = buildAdapter();
    return adapter;
  }

  bool hasAdapter() {
    return _adapter != null;
  }

  HttpClientRequest buildRequest(String method, String uri);
  HttpClientAdapter buildAdapter();
}
