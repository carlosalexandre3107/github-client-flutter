import 'package:github_client_flutter/app/models/repository/repository_model.dart';
import 'package:github_client_flutter/app/providers/http/http_provider.dart';
import 'package:http/http.dart' as http;

class RepositoryProvider implements HttpProvider {
  @override
  void close() {
    // TODO: implement close
  }

  @override
  Future<http.Response> fetch({String url}) async {
    final response = await http.get(Uri.https(
        'api.github.com',
        '/search/repositories',
        {'q': 'dart', 'sort': 'stars', 'order': 'desc', 'per_page': '15'}));
    if (response.statusCode == 200) {
      return RepositoryModel.fromJson(response.body);
    } else {
      // throw Exception('Failed to load GitHub repositories with ${response.statusCode}');
      print('Failed to load GitHub repositories with ${response.statusCode}');
    }
  }
}
