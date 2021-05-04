import 'package:http/http.dart' as http;

class RepositoryProvider {
  Future fetch({String url}) async {
    final response = await http.get(Uri.https(
        'api.github.com',
        '/search/repositories',
        {'q': 'dart', 'sort': 'stars', 'order': 'desc', 'per_page': '15'}));
    if (response.statusCode == 200) {
      // return RepositoryModel.fromJson(response.body);
    } else {
      // throw Exception('Failed to load GitHub repositories with ${response.statusCode}');
      print('Failed to load GitHub repositories with ${response.statusCode}');
    }
  }
}
