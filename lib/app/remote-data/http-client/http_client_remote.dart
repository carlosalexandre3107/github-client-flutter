import 'package:http/http.dart';

abstract class HttpClientRemote {
  Future<Response> request(String url, String method, [dynamic body]);
}
